# TODO
# - install sinatra
# - create endpoints
# - setup persistent store
# - also return band upper and lower (for graphing by client)
# - example graph (d3?)

# create new processor using {length} values
# /new/{length}
# - generate guid
# - guid[length] = length
# - guid[count] = 0 # number of values
# - return guid
# don't actually need to store guid...var name is guid

# push a data point
# /data/{guid}
# - read value from post data (JSON)
# - guid[values] << value
# - guid[count]++
# - if guid[count] < guid[length]
#   - return 202
# - else
#   - return band.upper, band.lower, value # (latter is just for easy graphing)