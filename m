Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A399168507
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Feb 2020 18:33:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 635DF87647;
	Fri, 21 Feb 2020 17:33:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EHSE3+31Riyq; Fri, 21 Feb 2020 17:33:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 51CDE87605;
	Fri, 21 Feb 2020 17:33:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4DEF91BF346
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 17:32:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4502C87605
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 17:32:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wDEc5E7ytqUC for <devel@linuxdriverproject.org>;
 Fri, 21 Feb 2020 17:32:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic305-2.consmr.mail.bf2.yahoo.com
 (sonic305-2.consmr.mail.bf2.yahoo.com [74.6.133.41])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0475B875E0
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 17:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1582306377; bh=I1Qwx0HKixeKSjxDFnZHinbQ70Iv0rM9w0U/F0Heang=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=aPBiuZN6/3D4hZ9oFvFpDNK07zyjJSM6xnI01qfGsjejcFMfgjYMS1ai0KQKVZ1nWbEuI0SYHi7HmJMOiub1aoFqRLXlGiec41o6CM7VqmhL4zWs1OUh4I/olkbhV8cw8jCBmFdxEwCIa3sYnJkYTzIXI2SM7mud3wvzttxuz/nqgriwcoiHHGFEIlb55/dnAiyrc2PpiHIJGmHFPdNbyK80dNuq1NpcUAdwWmXaFRocLZtklEZdidlkm6iiwHKdL1Nwlo7hCK+bstKAjWWIgAGaCZuMEr0QMEeU4sOdV48c3Oev7IBf7xkNkxujQx75JhEdjXKE3ZEre4xabB6l9w==
X-YMail-OSG: dJJ_G90VM1lae5qE5UTu0cJtGwFCqUYvtS3KQCt0FQ7EcuUYds2tLx3ShbeOpK9
 J9leqq4IG9FrgH8aYROwpg7RVSe.VEMhAibWCoV30pSHa25uDjUyfUcXeKWupG2Wgn.nxIqMnJwT
 H7ZJ3sNmtWI5_N6Qn8P4AkI09mQY_mf3uPRibMtHQvzDPBo1FlMp2ikO1Rupozah0n6zjX6W332M
 mT72lEpS.X1b2.hiecvZ.GJHkUClaomiyS4NO41lww4rTe3QARcaqJLAcTyh7efgoRgULDzuSQ92
 m.ShnSDkujaTk6quiACnW8ahnuAlq5pg83T78dthZsPQ4A_Xzz_T9Zx4EtdlX8t9fVUbl9_.aXjJ
 k1yLnCHuLQzpvX2LpcdFU0h8Mj451kFc6E1dZZTGxV8iahq02tEaaRs7SgllgmfvpaBLIuB1hguQ
 _PoGqC87MQsBrvApWpK.FWGR0kmeUZcUDkG6SjDaLbYv_aZWKsnVXo708iRk0s44bNPWyjju49m1
 xqp21OaH78Z6QuRqnQ6RkX5.xbuq3xB.rpCBYh51gg0dfqjjXArJ.sW0OD9PUg.9RGCtnODe434c
 Dae8Zua_Dxfzv1bFAS6gFUz30X0Ea52kx_nMVgZboYzE0yvfp.30r2rnpNGQXzZf7z0ggskeySRQ
 hao8KeujgZvqKM1_tJw.yti_c96_Eq7JmGjl0eSFLIM2PcDCacRQShB6BMK3A4JYOV2znFhyQBn2
 _nO5fFIQT1GhSlW19OmI2BLBe000QuIMbyUtF0xgQnZY82jECwSMKcpWA0RL48GwZuFCHnpAPwj5
 H6sNk5fn.S88oaLMaz0uldq1nUa4s.p3A2BU8MlFe9APQ0miofqCf0FQiXxJtEEKQ9NuTAUALzQf
 JJLuIBCQNud5PvOkRcr19uTSwHn96YrwnmhPmNyzf_t0C5dfcf2PucgZkRPl5Y94H6rPn13ieE_j
 AiH4VPS707w1OLzHzbEj_ONtYRlYugedaw6J2hl7wjfCTUorV.Jfv2Y5u4TOpEM5RcLVA7jDoWAP
 tLjqvI_KuFl9rFyIG4HsSTvSG0.3qB2JFSWqybDrILtuYlPj8nMw97dVnkPtRdP7LaJvzOxVTEa7
 _t0vJGDAbFbFN7O37qrEJHBnLlJMKxGxCpb75.s2mwmMWU5IBDi7WSpO0a9jE1g2jQAK.NKmW2a1
 Qmnooj0SRUh2UvhlDwweMnXl.5iEI99y7KXQvjlkPzwyai3GPPicTowcLLtW_JpAZAimmJfVQ4Eg
 7ZR3PHF6xAsLoMrtlwYnIQhYUslRKvn9arXdfq2ZG8Br3JXTVjt23cLOMukowJXksAlwvsdCXx4O
 oBIFqD2Gvr1ViLAt5Y.9ldgOGmWx7ShPU1uk-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic305.consmr.mail.bf2.yahoo.com with HTTP; Fri, 21 Feb 2020 17:32:57 +0000
Date: Fri, 21 Feb 2020 17:32:54 +0000 (UTC)
From: vera nica <veronica055@yahoo.com>
Message-ID: <2125962392.4620336.1582306374253@mail.yahoo.com>
Subject: =?UTF-8?B?5rOo5oSP77ya5omA5pyJ6ICF44Gu44Oh44O844Or44Ki44OJ44Os44K5?=
MIME-Version: 1.0
References: <2125962392.4620336.1582306374253.ref@mail.yahoo.com>
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
