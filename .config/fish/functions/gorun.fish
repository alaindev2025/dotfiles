function gorun
  for f in (fd -e txt);
    for l in $f;
      echo $l
    end
  end
end
