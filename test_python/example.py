example = 'Hi there again'


def define_text():
    txt = 'Hi there EB'
    print('inside define_text: '+example)
    return txt


def edit_text(txt):
    new_txt = txt.partition('Hi')[2]
    print(new_txt)




txt = define_text()
edit_text(txt)
print('outside everything: '+example)


# def main():
#     txt = define_text()
#     edit_text(txt)




# if __name__=="__main__":
#     main()