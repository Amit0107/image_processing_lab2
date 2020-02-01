
function CODE = huffman(p)
  set(0,'RecursionLimit',899);
   
   
    global CODE
    CODE = cell(length(p),1);            
    if length(p) > 1                     % When more than one symbol…
    p = p/sum(p);                    
    s = reduce(p);                    % Do Huffman source symbol reductions
    makecode(s, []);                  % Recursively generate the code
    else
    CODE = {'1'};                    % Else, trivial one symbol case!
    end
    %……………………………………………………………….%
    function s = reduce(p);
    
    s =  cell(length(p),1);
    
    for i = 1:length(p)
    s{i} = i;
    end
    while numel(s) > 2
    [p,i] = sort(p);             % Sort the symbol probabilities
    p(2) = p(1) + p(2);          % Merge the 2 lowest probabilities
    p(1) = [];                  % and prune the lowest one
    s = s(i);                    % Reorder tree for new prbabilities.
    s{2} = {s{1},s{2}};          % and merge & prune its nodes
    s(1) = [];                  % to match the probabilities
    end

    %……………………………………………………………….%
    function makecode(sc, codeword)
    global CODE
    if isa(sc,'cell')                                          % For cell array nodes,
    makecode(sc{1},[codeword 0]);         % add 0 if the 1st element,
    makecode(sc{2}, [codeword 1]);        % or a 1 if the 2nd
    else                                                            % For leaf (numeric) nodes,
    CODE{sc} = char('0' + codeword);     % create a char code string
    end
clc

