Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C463F168510
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Feb 2020 18:35:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 476F3864AB;
	Fri, 21 Feb 2020 17:35:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Noy8Z2vJ3ZvH; Fri, 21 Feb 2020 17:35:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B5BAA864BD;
	Fri, 21 Feb 2020 17:35:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 86BFC1BF346
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 17:35:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 83F4985E93
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 17:35:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dEx3ymjnhpOF for <devel@linuxdriverproject.org>;
 Fri, 21 Feb 2020 17:35:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic316-11.consmr.mail.bf2.yahoo.com
 (sonic316-11.consmr.mail.bf2.yahoo.com [74.6.130.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2164885092
 for <devel@driverdev.osuosl.org>; Fri, 21 Feb 2020 17:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1582306500; bh=I1Qwx0HKixeKSjxDFnZHinbQ70Iv0rM9w0U/F0Heang=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=jwTBrmb0EHXQPjnmDpKtApio914P8n9uajiXPyo4Or+MdhnXCRr9XjHauVo7jDEbo7iYACYwjGmBqPuag2bmsZYgGPqH6Eu3IKPstrV5lRX1JR5JZRY3CsynAMFDONlcbaEqjMmKXJeJ5lcNmWQWxSVjvGo26tSJDUK5zaHpcXzg6uS0uO8sko3XhUWdgKxntYtRwCxME0CZAMBdH1MnCizaAjLwwXba8C4xQbnCrH+6dh9JlcTUusVshBfIIt3BYBAWSOrKyW8r/kVbAOWk1bsMhyiW89C4DNsgpxpuPmerEerQ5iXvSJSJgXLBIrfn+5dczWzRkQjjw4vkwre5pg==
X-YMail-OSG: 107aAv0VM1nohrW.I3WyLmC0y4RaYUBYwM_BlcAYDBZXunZNQx34NnOWYjlDHBL
 vrFroZFZ8BwuJ2fJPPz3IOYzqYnrWwslHcw6aA5jaMPoZ46sSVOdo2sIOqjVh9DupC2ZhkUdWmwy
 iRQEifnMXPgVroriQTg0Et5NSQben.hm8UcLaYXAmX.VQthQpG0FsCma4Te5HcrirB9hR.h7dSll
 HiNd1ZaG.RcFsr9b7Q.ptj1gZrcSloDtpEnDFaPGrxiY3ZL.IECMOonMEQa5Aw7dvAUKCWUgkDbi
 cEy1i1FH8nWNd.Sq6lteD3COK6yg16CdqOxVElIRC9qC_MqDYTrB1JOQBtFidSd_y2sS5oefN6LN
 sA86XPBecJzsJKfmM76MDMJMfF9PpfaL0csgdsuulzIGgWH4meCFYeV1Ag1UF4UI9EgyFK_Qr5.u
 cQK1c92Uw3PHSB.DeLlb.xGHvXf9nqPJmA3Esftxb8N0UEmSni_KiDq3DO29k.BjPJbpUcF6I98d
 j4Z.IWl2iSGmCzdwYz66XAVEQJHd.hmK5wJ8uwvwx_2nJLUH6fONhTD4k_Hr.pSVwkg2SsUuUj0q
 V4BdeZjfrbm6o9O4CTS_7l7T.sDFXrFwF4UaJ7X56jQG9PTgX8g5RgXBhefpqAFIHUi4UT_1057Y
 8Jq_zBC4TcHjIxER1kjmtGiugXYuTolaS129YH195sDj1OzD9ydITs5.LbqS6_u.TJCHOoV5FxwJ
 C3RfLc2C1CaCCe2xCGkeIVFledTH1V9EiIMajLPUabgsSakdEI1MzkZKK2HZvc8tTT6XPaOaWiVT
 oKt8cHLFvRM9MzRPaQf7iCSg29.O.ae.qptLUyKrkNK9Rx9x4g7FbAfe_teqVzzwhoweu49zcSPN
 Xkj30n3DAFqeb4PNMwuYOxfoBFi6H63XhUC4KhSTOojb.zrxBCZyficxSyAR__0.3wxBvdQgFMBA
 cWHC4u4uYA7CNi_usCHAAxGwePB1oKb6HgCS5LlEBWd_JM4CTPh1TmYVAn4De80IGAZ8mNywWT0L
 I_mbT_STakN0w7_XCyliHM2o4l7NSzZCYEipoSeoQuipCpmD6_z.Hvth9VjA1Sqot3UlLgJRJEDO
 4r48Gu.1n7TJE1hym72Njd7ayyTPhCuYG.X.GADwtfBGQtzc5WdXYzR.lP.X79J756IKh5YzWHNk
 04hoEMePA6hJoFTkBa6s.t5sptr1aYRvGOU4VNl44ogGnzZ75WGT8JVjCNhsAYob4kKxdkvfU29g
 OPrQScy5JAv4EoL1UmPDWJMzWsvU0OJaH9nnA__QpvqzlXHUznXE_UdD5LD8IDNg1qJT12Qo1iQZ
 C_D82WX2OjuLiRKLYxVxloVzBPQ91bYfL_OM-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic316.consmr.mail.bf2.yahoo.com with HTTP; Fri, 21 Feb 2020 17:35:00 +0000
Date: Fri, 21 Feb 2020 17:34:57 +0000 (UTC)
From: vera nica <veronica055@yahoo.com>
Message-ID: <1566880589.4582266.1582306497109@mail.yahoo.com>
Subject: =?UTF-8?B?5rOo5oSP77ya5omA5pyJ6ICF44Gu44Oh44O844Or44Ki44OJ44Os44K5?=
MIME-Version: 1.0
References: <1566880589.4582266.1582306497109.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15199 YMailNodin Mozilla/5.0 (Windows NT 5.1)
 AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36
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
Reply-To: veronica055@yahoo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

5rOo5oSP77ya5omA5pyJ6ICF44Gu44Oh44O844Or44Ki44OJ44Os44K5DQoNCuOBk+OBruODl+OD
reOCsOODqeODoOOBr+OAgeS4reWbveOBruOCueODreODkOOCreOCouOBp+ipkOasuuOBruiiq+Wu
s+iAheOBruOBn+OCgeOBq+ODiOODvOOCtOODleOCqeODvOODrOOCsOODiuOCt+ODs+ODmeWkp+e1
semgmOOBq+OCiOOBo+OBpumWi+Wni+OBleOCjOOBvuOBl+OBn+OAgg0KDQrjgYLjgarjgZ/jga7j
g6Hjg7zjg6vjgqLjg4njg6zjgrnjgajjgYLjgarjgZ/jga7lkI3liY3jgYznmbropovjgZXjgozj
gIHjgYLjgarjgZ/jga/ooqvlrrPogIXjga7kuIDkurrjgajjgZfjgablj5flj5bkurrjga7kuIDk
urrjgafjgYLjgorjgIHjgYLjgarjgZ/jga7nt4/oo5zlhJ/ln7rph5Hjga8zMDAsMDAwLDAwMOOD
ieODq++8iDMsMDAw57Gz44OJ44Or77yJ44Gn44GZ44CC44GT44Gu44GK6YeR44Gv54++5Zyo44CB
57WE57mU5oyv5pu/6YOo44KS6YCa44GY44Gm6KuL5rGC44GV44KM44G+44GZ44CCDQoNCuOBguOB
quOBn+OBjOOBl+OBquOBkeOCjOOBsOOBquOCieOBquOBhOOBruOBr+OAgTXllrbmpa3ml6Xku6Xl
hoXjgavjgYLjgarjgZ/jga7os4fph5Hjga7lh6bnkIbjgajjg6rjg6rjg7zjgrnjga7jgZ/jgoHj
gavjg63jg6Hjg4jjg7zjgrTmnKzpg6jjgavpgKPntaHjgZnjgovjgZPjgajjgafjgZnjgIINCuOB
n+OBoOOBl+OAgeOBiuaUr+aJleOBhOOBr+mKgOihjOaMr+OCiui+vOOBv+OBq+OCiOOCiuOBiuWu
ouanmOOBruWbveOBruebtOaOpemKgOihjOWPo+W6p+OBq+WQiOioiDMwMCwwMDAuMDDjg4njg6vj
gafpgIHph5HjgZXjgozjgovjgZPjgajjgavjgZTms6jmhI/jgY/jgaDjgZXjgYTjgIINCg0K44Oh
44O844Or44Ki44OJ44Os44K544Gu44G/44KS5L2/55So44GX44Gm5pSv5omV44GE44KS6YCB5L+h
44GZ44KL44GT44Go44Gv44Gn44GN44G+44Gb44KT44CC5b+F6KaB44Gq44GT44Go44Gv44CB5qyh
44Gu5oOF5aCx44KS5byK56S+5pys56S+44Gr44GU6YCj57Wh44GP44Gg44GV44GE44CCDQoNCuOB
guOBquOBn+OBruODleODq+ODjeODvOODoCDigKbigKbigKbigKbigKbigKYNCumKgOihjOOBruip
s+e0sOKApuKApuKApuKApg0KDQrms6jvvJrnmbvpjLLjgasxMjDjg6bjg7zjg63jgpLotoXjgYjj
gabpgIHph5HjgZfjgarjgYTjgafjgY/jgaDjgZXjgYTjgILpioDooYzlj6Pluqfjgbjjga4zMDAs
MDAwLDAwMOODieODq+OBrumAgemHkeOCkuWPl+OBkeWPluOCi+OBn+OCgeOBq+aUr+aJleOBhuW/
heimgeOBjOOBguOCi+WUr+S4gOOBruaJi+aVsOaWmeOBp+OBmeOAgg0KDQrpm7vlrZDjg6Hjg7zj
g6vjgafjgYrllY/jgYTlkIjjgo/jgZvjgY/jgaDjgZXjgYTvvJrvvIhvcmFiYW5rdHJhbnNmZXJz
ZXJ2aWNlQGdtYWlsLmNvbe+8iS4uLi4uLi4NCg0K5pyJ6Zuj44GG5b6h5bqn44GE44G+44GZ44CC
DQrjgrvjg6vjgrjjg6Xjg7vjg4zjgrDjgrXjg7PljZrlo6sKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4
ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
