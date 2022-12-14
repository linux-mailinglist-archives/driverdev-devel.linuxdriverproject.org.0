Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 656B464C1A1
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Dec 2022 02:04:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E42660B5E;
	Wed, 14 Dec 2022 01:04:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E42660B5E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ozBBQDcKa-np; Wed, 14 Dec 2022 01:04:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7390160AFB;
	Wed, 14 Dec 2022 01:04:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7390160AFB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CD7F71BF3CB
 for <devel@linuxdriverproject.org>; Wed, 14 Dec 2022 01:04:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A8ED740151
 for <devel@linuxdriverproject.org>; Wed, 14 Dec 2022 01:04:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8ED740151
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5VudjuRrHkfG for <devel@linuxdriverproject.org>;
 Wed, 14 Dec 2022 01:04:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16D4F40141
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com
 [IPv6:2001:4860:4864:20::2e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 16D4F40141
 for <devel@driverdev.osuosl.org>; Wed, 14 Dec 2022 01:04:50 +0000 (UTC)
Received: by mail-oa1-x2e.google.com with SMTP id
 586e51a60fabf-144bd860fdbso14847550fac.0
 for <devel@driverdev.osuosl.org>; Tue, 13 Dec 2022 17:04:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=EZvbI+nUO1reaqxb0rsJPVoTxiFFd7Uy9aQUO/QcKNk=;
 b=LZI29U/lI2OHYKnBebgN5iOYuafGNElxLFq/5n28NrH+0JvlQiZWiQwRMgp6Twe6kn
 BzSTc72I0Mn4G1LO18WazuXhBLqC3GyH/mzO8HdLJoNJh1Saxd82ZcGpbqmTOnLuuF18
 +YlXYN/SKLF1SHdyG4a8/qBIvk+pzYcOamd9RYuy2Fvjbv/iV80OOkFpPym+W0sAkBTH
 OiDN30B8k/CyeczL7ThwKLBT8g/fe9h6cIATxiCc2Mx++Irnycx6W4K4TeR88eOylFS3
 7e+8Rc1MtET6tsZYESSsWnXjf9EiXz2ji75GSF6Io2kN82Q+hsJMbcA4Dg7X2MOQWGIJ
 ToDA==
X-Gm-Message-State: ANoB5pmZb4xCuWHYehLBUsvbqW6is9ZxYvzeL60o7/xzfo8RMwYU7TRI
 pKquNJEWquGXlm2oE5IWYxfVkdW/vgqcBcDWbCk=
X-Google-Smtp-Source: AA0mqf77O0hbaivlsBD/0xE60PMgFr5F7qb2jwAYR7ykcrbqId3EsXlrdqoj8KFpNRS7YmqBahyNGjossh95h7/i3/8=
X-Received: by 2002:a05:6871:a691:b0:144:7eab:2cb9 with SMTP id
 wh17-20020a056871a69100b001447eab2cb9mr70449oab.180.1670979888859; Tue, 13
 Dec 2022 17:04:48 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6358:8099:b0:c7:cf67:1aef with HTTP; Tue, 13 Dec 2022
 17:04:48 -0800 (PST)
From: "Ms. Theresa Heidi" <dilleyakubua@gmail.com>
Date: Tue, 13 Dec 2022 17:04:48 -0800
Message-ID: <CAK4f93tsOx2Pro3zmJ+S5tttXGMuQHgX45HCRGf4yttPw-zmFQ@mail.gmail.com>
Subject: =?UTF-8?B?5oCl5LqL5rGC5Yqp?=
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=EZvbI+nUO1reaqxb0rsJPVoTxiFFd7Uy9aQUO/QcKNk=;
 b=RgpWsE0ZnXU5aFsWAlMq89VX1ii3/G5MgLhW7j/FuVElYJHLNUnTXRRG7mdy/K9j3G
 oR+pl6lE+NP3nUy7J+mLD7XEb6OrL09/KEA7x2+cR505KJKUVRdXDJT0rIwI0WYivPrr
 YpifqfyvQGUhZ2G2aQJr0HJr27gkrXN7osR/kDr2IRyMPts4doI/eNleAPA6jLWAy24c
 7+CDdPpyr18aOokjIfsHQiR3/MEdDBNCvBOJ5zNYJZvT3hXFrLygN0oNa3ONAbhCNDoS
 JHE13EvDApEGn4CpOSSuVlYR7kVqjkK9DnQ9J+/ybKYip6SJh3iE1SpjiMnrENkvDjIf
 2/Qg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=RgpWsE0Z
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
Reply-To: mrstheresaheidi8@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

5oWI5ZaE5o2Q5qy+77yBDQoNCuivt+S7lOe7humYheivu++8jOaIkeefpemBk+i/meWwgeS/oeeh
ruWunuWPr+iDveS8mue7meS9oOS4gOS4quaDiuWWnOOAgiDmiJHlnKjpnIDopoHkvaDluK7liqnn
moTml7blgJnpgJrov4fnp4HkurrmkJzntKLpgYfliLDkuobkvaDnmoTnlLXlrZDpgq7ku7bogZTn
s7vjgIINCuaIkeaAgOedgOayiemHjeeahOaCsuS8pOWGmei/meWwgemCruS7tue7meS9oO+8jOaI
kemAieaLqemAmui/h+S6kuiBlOe9keS4juS9oOiBlOezu++8jOWboOS4uuWug+S7jeeEtuaYr+ac
gOW/q+eahOayn+mAmuWqkuS7i+OAgg0KDQrmiJHmmK82MuWygeeahOeJueiVvuiOjirmtbfokoLl
pKvkurrvvIznm67liY3lm6DogrrnmYzlnKjku6XoibLliJfnmoTkuIDlrrbnp4Hnq4vljLvpmaLk
vY/pmaLmsrvnlpfjgIINCjTlubTliY3vvIzmiJHnmoTkuIjlpKvljrvkuJblkI7vvIzmiJHnq4vl
jbPooqvor4rmlq3lh7rmgqPmnInogrrnmYzvvIzku5bmiorku5bmiYDmnInnmoTkuIDliIfpg73n
lZnnu5nkuobmiJHjgIIg5oiR5bim552A5oiR55qE56yU6K6w5pys55S16ISR5Zyo5LiA5a625Yy7
6Zmi6YeM77yM5oiR5LiA55u05Zyo5o6l5Y+X6IK66YOo55mM55eH55qE5rK755aX44CCDQoNCuaI
keS7juaIkeW3suaVheeahOS4iOWkq+mCo+mHjOe7p+aJv+S6huS4gOeslOi1hOmHke+8jOWPquac
ieS4gOeZvuS4h+S6jOWNgeS4h+e+juWFg++8iDEsMjAwLDAwMCwwMOe+juWFg++8ieOAgueOsOWc
qOW+iOaYjuaYvu+8jOaIkeato+WcqOaOpei/keeUn+WRveeahOacgOWQjuWHoOWkqe+8jOaIkeiu
pOS4uuaIkeS4jeWGjemcgOimgei/meeslOmSseS6huOAgg0K5oiR55qE5Yy755Sf6K6p5oiR5piO
55m977yM55Sx5LqO6IK655mM55qE6Zeu6aKY77yM5oiR5LiN5Lya5oyB57ut5LiA5bm044CCDQoN
Cui/meeslOmSsei/mOWcqOWbveWklumTtuihjO+8jOeuoeeQhuWxguS7peecn+ato+eahOS4u+S6
uueahOi6q+S7veWGmeS/oee7meaIke+8jOimgeaxguaIkeWHuumdouaUtumSse+8jOaIluiAheet
vuWPkeS4gOWwgeaOiOadg+S5pu+8jOiuqeWIq+S6uuS7o+aIkeaUtumSse+8jOWboOS4uuaIkeeU
n+eXheS4jeiDvei/h+adpeOAgg0K5aaC5p6c5LiN6YeH5Y+W6KGM5Yqo77yM6ZO26KGM5Y+v6IO9
5Lya5Zug5Li65L+d5oyB6L+Z5LmI6ZW/5pe26Ze06ICM6KKr5rKh5pS26LWE6YeR44CCDQoNCuaI
keWGs+WumuS4juaCqOiBlOezu++8jOWmguaenOaCqOaEv+aEj+W5tuacieWFtOi2o+W4ruWKqeaI
keS7juWkluWbvemTtuihjOaPkOWPlui/meeslOmSse+8jOeEtuWQjuWwhui/meeslOi1hOmHkeeU
qOS6juaFiOWWhOS6i+S4mu+8jOW4ruWKqeW8seWKv+e+pOS9k+OAgg0K5oiR6KaB5L2g5Zyo5oiR
5Ye65LqL5LmL5YmN55yf6K+a5Zyw5aSE55CG6L+Z5Lqb5L+h5omY5Z+66YeR44CCIOi/meS4jeaY
r+S4gOeslOiiq+ebl+eahOmSse+8jOS5n+ayoeaciea2ieWPiueahOWNsemZqeaYrzEwMCXnmoTp
o47pmanlhY3otLnkuI7lhYXliIbnmoTms5Xlvovor4HmmI7jgIINCg0K5oiR6KaB5L2g5ou/NDUl
55qE6ZKx57uZ5L2g5Liq5Lq65L2/55So77yM6ICMNTUl55qE6ZKx5bCG55So5LqO5oWI5ZaE5bel
5L2c44CCDQrmiJHlsIbmhJ/osKLmgqjlnKjov5nku7bkuovkuIrmnIDlpKfnmoTkv6Hku7vlkozk
v53lr4bvvIzku6Xlrp7njrDmiJHnmoTlhoXlv4PmhL/mnJvvvIzlm6DkuLrmiJHkuI3mg7PopoHk
u7vkvZXkvJrljbHlj4rmiJHmnIDlkI7nmoTmhL/mnJvnmoTkuJzopb/jgIINCuaIkeW+iOaKseat
ie+8jOWmguaenOaCqOaUtuWIsOi/meWwgeS/oeWcqOaCqOeahOWeg+WcvumCruS7tu+8jOaYr+eU
seS6juacgOi/keeahOi/nuaOpemUmeivr+WcqOi/memHjOeahOWbveWutuOAgg0KDQrkvaDkurLn
iLHnmoTlprnlprnjgIINCueJueiVvuiOjirmtbfokoLlpKvkuroNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
