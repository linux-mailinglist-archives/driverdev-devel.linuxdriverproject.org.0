Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6195D450461
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Nov 2021 13:26:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 23BCA80E2A;
	Mon, 15 Nov 2021 12:26:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F6eE-tx-qHce; Mon, 15 Nov 2021 12:26:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D8DD80DA5;
	Mon, 15 Nov 2021 12:26:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 92EF81BF343
 for <devel@linuxdriverproject.org>; Mon, 15 Nov 2021 12:25:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8EAD5402BA
 for <devel@linuxdriverproject.org>; Mon, 15 Nov 2021 12:25:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5MQYuhDuIbj9 for <devel@linuxdriverproject.org>;
 Mon, 15 Nov 2021 12:25:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com
 [IPv6:2607:f8b0:4864:20::32c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0A5764024E
 for <devel@driverdev.osuosl.org>; Mon, 15 Nov 2021 12:25:53 +0000 (UTC)
Received: by mail-ot1-x32c.google.com with SMTP id
 z2-20020a9d71c2000000b0055c6a7d08b8so27195345otj.5
 for <devel@driverdev.osuosl.org>; Mon, 15 Nov 2021 04:25:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=WjXWp0tmmzQm8o4QZd1RfOGdO2inzk6KJKcKgnUwYJo=;
 b=WL+yHxtEAAbQNzELi0SHN9qUOxf/wCyOTy/HEZxKdHTACvleqnJpojDeTizNKvHCjH
 PU263QhYNOGHXvek0U8OVVMO103E4T9NbW3R5qWQBEi0HCjRhN9HlQj+QxsJdVBBxe0Q
 BOk/NrGjKF5z9VpnCcyAGLz4NNHjvuefEMf5eBK4gGxVHjH4v2ZNaygxHcODU3o1MGRb
 UgAvigt84jl8+0vht5hW8mK4rSzV/RldIoDzmV5Xx8o19YJRrC5DI/zSiW4QsFR1DtLC
 vO4VPFzEZhM3vm9eTO04cq6/+yrB4ZxN5WsKdm9F04tLS4L3ElEkel0egzRmXL83nHl7
 gX3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=WjXWp0tmmzQm8o4QZd1RfOGdO2inzk6KJKcKgnUwYJo=;
 b=K1ISPYK2ywnyqDbxGEpNbpebZ8Xm4765v/bXy0h6FJ2JDl5X+f3cHcvLq8b797+6eL
 L9RLgejrv7z8I6DHUfr3DS5RVZyY2f6T0kSpKX7qoTzQPGw0OjToO+hnbfY4NcsxZ+vy
 Q5gWt6y8jKWC+X1i3tRKD1iH1D/m0qChaG29mZw+NJenJsL7qzSyq3HCZ+nBhaL5D7uP
 08MRT2LqKSn0ctebDHHCMQe5soHrB23hGoMuxArjerGxuCnbPHjXWlxGtexly5BMP35F
 wiezkflWsnucSq1Du6vA1nxM8jlBBqw3wP1FbogieJKp3qfAvt3Rgmm3kJZDMqH3m6+N
 hhyw==
X-Gm-Message-State: AOAM530Lgs/cRi9LHLTFv4SB/altFiJR60+c9sEG3i1Y2YBUvGkHd6oB
 lk8Pm2SexqEJw1sJutQSL4foIE/YOnIQTnaqJP8=
X-Google-Smtp-Source: ABdhPJwidwk62W/8zyD4mIu9Wor7JRlQqrD575BAzCgFWYKMRx1YClZ72lAFSUDzXvhhZDastVnQioaXN2dUzQ4CO5Y=
X-Received: by 2002:a05:6830:1690:: with SMTP id
 k16mr31503749otr.148.1636979152663; 
 Mon, 15 Nov 2021 04:25:52 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a4a:83d3:0:0:0:0:0 with HTTP; Mon, 15 Nov 2021 04:25:52
 -0800 (PST)
From: "Mrs. Cristina Campbell" <michelleviratfoundation@gmail.com>
Date: Mon, 15 Nov 2021 12:25:52 +0000
Message-ID: <CAHEFg20o-Bk4=eJJPQy2vL2VWneaNx=NUJVNv8i_OwcR77RVXA@mail.gmail.com>
Subject: =?UTF-8?B?5L2g6IO95biu5oiR5ZCX?=
To: undisclosed-recipients:;
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Reply-To: cristinacampeell@outlook.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

5Lqy54ix55qE77yMDQoNCuivt+aFouaFouS7lOe7humYheivu++8jOWboOS4uuWug+WPr+iDveaY
r+aCqOaUtuWIsOeahOacgOmHjeimgeeahOeUteWtkOmCruS7tuS5i+S4gOOAguaIkeaYryBDcmlz
dGluYSBDYW1wYmVsbCDlpKvkurrvvIzmiJHkuI7lt7LmlYXnmoQgRWR3YXJkDQpDYW1wYmVsbCDn
u5PlqZrjgILku5bmm77lnKjkvKbmlablo7PniYznn7PmsrnlvIDlj5Hlhazlj7jlt6XkvZzvvIzk
uZ/mmK/kuIDlkI3kuJzkuprlnLDljLrnu4/pqozkuLDlr4znmoTmib/ljIXllYbjgILku5bkuo4g
MjAwMyDlubQgNyDmnIggMzENCuaXpeaYn+acn+S4gOWcqOW3tOm7juWOu+S4luOAguaIkeS7rOe7
k+WpmuS4g+W5tOayoeacieWtqeWtkOOAgg0KDQrlvZPkvaDor7vliLDov5nph4zml7bvvIzmiJHk
uI3mg7PorqnkvaDkuLrmiJHmhJ/liLDpmr7ov4fvvIzlm6DkuLrvvIzmiJHnm7jkv6Hmr4/kuKrk
urrmgLvmnInkuIDlpKnkvJrmrbvljrvjgILmiJHooqvor4rmlq3lh7rmgqPmnInpo5/pgZPnmYzv
vIzmiJHnmoTljLvnlJ/lkYror4nmiJHvvIznlLHkuo7miJHlpI3mnYLnmoTlgaXlurfpl67popjv
vIzmiJHmkpHkuI3kuoblpJrkuYXjgIINCg0K5oiR5biM5pyb5LiK5bid5oCc5oKv5oiR77yM5o6l
57qz5oiR55qE54G16a2C77yM5omA5Lul77yM5oiR5Yaz5a6a5ZCR5oWI5ZaE57uE57uHL+aVmeWg
gi/kvZvmlZnlr7rlupkv5riF55yf5a+6L+aXoOavjeWptC/lvLHlir/nvqTkvZPlkozlr6Hlpofm
lr3oiI3vvIzlm6DkuLrmiJHluIzmnJvov5nmmK/mnIDlkI7nmoTlloTooYzkuYvkuIDmiJHmrbvl
iY3lnKjlnLDnkIPkuIrlgZrjgILliLDnm67liY3kuLrmraLvvIzmiJHlt7Lnu4/lkJHoi4/moLzl
hbDjgIHlqIHlsJTlo6vjgIHlsLzms4rlsJTjgIHoiqzlhbDlkozlt7Topb/nmoTkuIDkupvmhYjl
loTnu4Tnu4fliIblj5HkuobotYTph5HjgILnjrDlnKjmiJHnmoTlgaXlurfnirblhrXmgbbljJbl
vpflpoLmraTkuKXph43vvIzmiJHkuI3og73lho3oh6rlt7HlgZrov5nku7bkuovkuobjgIINCg0K
5oiR5pu+57uP6KaB5rGC5oiR55qE5a625Lq65YWz6Zet5oiR55qE5LiA5Liq6LSm5oi377yM5bm2
5bCG5oiR5Zyo6YKj6YeM55qE6ZKx5YiG6YWN57uZ5Lit5Zu944CB57qm5pem44CB5b635Zu944CB
6Z+p5Zu95ZKM5pel5pys55qE5oWI5ZaE57uE57uH77yM5LuW5Lus5ouS57ud5bm25bCG6ZKx55WZ
57uZ6Ieq5bex44CC5Zug5q2k77yM5oiR5rKh5pyJ5LiN5YaN55u45L+h5LuW5Lus77yM5Zug5Li6
5LuW5Lus5Ly85LmO5LiN5Lya5LiO5oiR5Li65LuW5Lus55WZ5LiL55qE5Lic6KW/5oqX6KGh44CC
5oiR5pyA5ZCO5LiA56yU5peg5Lq655+l6YGT55qE6ZKx5piv5oiR5Zyo5rOw5Zu95LiA5a626ZO2
6KGM5a2Y5YWl55qEDQo2MDAg5LiH576O5YWD55qE5beo6aKd546w6YeR5a2Y5qy+44CC5aaC5p6c
5oKo55yf6K+a77yM5oiR5biM5pyb5oKo5bCG6L+Z56yU6LWE6YeR55So5LqO5oWI5ZaE6K6h5YiS
5bm25pSv5oyB5oKo5omA5Zyo5Zu95a6255qE5Lq657G744CCDQoNCuaIkeWBmuWHuui/meS4quWG
s+WumuaYr+WboOS4uuaIkeayoeacieWtqeWtkOS8mue7p+aJv+i/meeslOmSse+8jOaIkeS4jeaA
leatu++8jOaJgOS7peaIkeefpemBk+aIkeimgeWOu+WTqumHjOOAguaIkeefpemBk+aIkeS8muWc
qOS4u+eahOaAgOaKsemHjOOAguaUtuWIsOaCqOeahOWbnuWkjeWQju+8jOaIkeS8muWwveW/q+e7
meaCqOmTtuihjOeahOiBlOezu+aWueW8j++8jOW5tuWQkeaCqOWPkeWHuuaOiOadg+S5pu+8jOaO
iOadg+aCqOaIkOS4uuivpeWfuumHkeeahOWOn+Wni+WPl+ebiuS6uu+8jOS7peS+v+aCqOeri+WN
s+WcqOaCqOaJgOWcqOeahOWbveWuti/lnLDljLrlvIDlp4vov5npobnmhYjlloTorqHliJLjgIIN
Cg0K5Y+q5pyJ5Li65LuW5Lq66ICM5rS755qE55Sf5ZG95omN5piv5pyJ5Lu35YC855qE44CC5oiR
5biM5pyb5L2g5rC46L+c5Li65oiR56WI56W377yM5L2g5Zue5aSN55qE5Lu75L2V5bu26L+f6YO9
5Lya6K6p5oiR5pyJ56m66Ze05Li65ZCM5qC355qE55uu55qE5a+75om+5Y+m5LiA5Liq5Lq644CC
5aaC5p6c5oKo5LiN5oSf5YW06Laj77yM6K+35Y6f6LCF5oiR5LiO5oKo6IGU57O744CC5oKo5Y+v
5Lul6YCa6L+H5oiR55qE56eB5Lq655S15a2Q6YKu5Lu26IGU57O75oiW5Zue5aSN5oiR77yaKGNy
aXN0aW5hY2FtcGVlbGxAb3V0bG9vay5jb20p44CCDQoNCuiwouiwou+8jA0K5q2k6Ie077yMDQrl
hYvph4zmlq/okoLlqJzCt+Wdjui0neWwlOWkq+S6ug0K55S15a2Q6YKu5Lu2OyBjcmlzdGluYWNh
bXBlZWxsQG91dGxvb2suY29tDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9y
ZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcml2ZXJkZXYtZGV2ZWwK
