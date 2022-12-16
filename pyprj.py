
# For first question
#----------------------------------------------------------------
def flatten_list(input_list):
  flattened_list = []  # Create an empty list to store the flattened elements
  for element in input_list:
    # If the element is a list, recursively flatten it and add the flattened elements to the list
    if isinstance(element, list):
      flattened_list.extend(flatten_list(element))
    # If the element is not a list, just add it to the list
    else:
      flattened_list.append(element)
  return flattened_list

# Example usage
input_list = [[1,'a',['cat'],2],[[[3]],'dog'],4,5]
flattened_list = flatten_list(input_list)
print(flattened_list)  # This will print "[1,'a','cat',2,3,'dog',4,5]"

#For Second Question
#---------------------------------------------------------------
def reverse_list(input_list):
  reversed_list = []  # Create an empty list to store the reversed elements
  for element in input_list[::-1]:
    # If the element is a list, recursively reverse it and add it to the list
    if isinstance(element, list):
      reversed_list.append(reverse_list(element))
    # If the element is not a list, just add it to the list
    else:
      reversed_list.append(element)
  return reversed_list

# Example usage
input_list = [[1, 2], [3, 4], [5, 6, 7]]
reversed_list = reverse_list(input_list)
print(reversed_list)  # This will print "[[[7, 6, 5], [4, 3], [2, 1]]]"
  
  
