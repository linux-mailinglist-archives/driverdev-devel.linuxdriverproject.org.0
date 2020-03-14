Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EA2185686
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Mar 2020 23:48:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5903489900;
	Sat, 14 Mar 2020 22:48:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zjgMEr3Y+1TC; Sat, 14 Mar 2020 22:48:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A12D1898CB;
	Sat, 14 Mar 2020 22:48:34 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 93D8C1BF34F
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 14 Mar 2020 22:48:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9061420551
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 14 Mar 2020 22:48:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c0wtctlOm71l
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 14 Mar 2020 22:48:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sonic302-21.consmr.mail.ir2.yahoo.com
 (sonic302-21.consmr.mail.ir2.yahoo.com [87.248.110.84])
 by silver.osuosl.org (Postfix) with ESMTPS id B1F2020470
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 14 Mar 2020 22:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s2048;
 t=1584226109; bh=yQ8j5nOiL1AB9VzjpcatQY3Gp/1Xq/WgkFt4Qo+Pvao=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=hvU2oVhtUAF0bOuglY9I/k7pFP2lM+UJ+nXn+qXwxl0ZGmDyi6o6Roue2zcNCob38q3VRYCVZRLBii39dr9t1hYi73y6ylLW3AebV18dmEEZ6+ymk+gtazfK2hhPE7gllC9HQZMgcWWsUp1U9qbHYzkxcp7FpbTeCQtRotKrpVuo45eWH5kE6OV5Jx2jdPD4yyZb/0qBUf8FW3HNFJeinPVvq1j+C6bdY3WVpsEFfRp6hNKvqY3IplgtjOL01ee6RK5vhbcs8tNriq3lg9jc225j7Cg3ojwOzHKqjvwrHzAWvyKnAQOpI7DySz/8ySprrzgmle5sygIU+9tD9c8x6Q==
X-YMail-OSG: b7nZ1BMVM1kCV.Cvyy4Z9r1cLpSeD.So3av.w9RCH_uAWgq6cj74QyX2FPk1_00
 y_4RWX25Mtho0oyHMZgjJn4OsoQsTiPN7xurOM7j60y85R7Q42W1Vq8NFlfrnPGDPh9KfGM_QyZh
 EMSaPglm.rk4y4n6HSoMG40XHMAnQcPZLk3Z4e3JYUyQRsJ0UroT4fsI0qRCjq_VdFWsrDl_Bw.n
 _DK3R1WUQU_GUB9yQ2TkJfU1bwZNeguBBraoFfzNZmmtRpqtendXUVzg_RNQNEvA4oQgylucnkHS
 1Dx0qnKwUcwmNB_Ah5LNPbSlqVQiBIEkM8CyiVVO3pFSkZNp65.qZmhLgr42Iey8Lpt19FylKFkH
 eAFBSOy.EeeaRB9ser3lMRZuOjVXk.LHwWFBeMxOKUasJ3IcxJGQ5Bu7Fko0CFrI1Ley4tbisgBs
 gDjo3bvplSW1jAKg3JAegJHmVg7_JAvVF8JDYc6QeH7ELk.9KeN9S6.jL.to5n339W6g.hVgD4Cc
 nn6Ey20d1Lv1bFHVdDbkolKXldy.Fs1Bz.hp2N8oAw8KkrzqZeJD9LbTxlIb4Sp5DlWNXYqJdPne
 wo9mVuyiyF106GTHIWc58ZFMsqG5ONj34Wz8UbnxbAzHUUNuCuZkh37PmELMSO6Q.Ijv_bK2IKkQ
 cgLf0qlTIQKEkQ29m2Hnnt_tKj1cTfsCZwDtv3yViDBEciqnXINRJjlQUbpe0_vItvfgtEk3kKAd
 F7K6hspx2WH.KCCimTbmd2ze.LyPqaAVQwF7Y8Jhb01CvzO9B8kTB0TyNHobEYL.qseFLp6pm5e3
 tt0hgT_MVcwHPCZpowZ1KtFHLZBffSgFMV055Jwqkcf_XQkD.MmZh1Fjxo9vD.Ta_UTIhgrt6wnO
 XBBfyu4604.CwjiCiR4rCUEy5STQf9QNY762MPcgTawTnMeichMLZd1Mg_JwQv9fItMGwNMYvs4Z
 ZgtNOnbBaptKT6fl8ZBdWLVcocs5ARKPXdICV_mwlnlIXMWjHh7ysPnTJM8EVoL.u1ftnwEwjK9j
 efHjh3r5J6KDgfCZRUH68Gl76JkDur4RmrowImdxlQ.QxZTnMQA5ZXpimKstYiY4T7E0r_DrJPY2
 RjtdOrmgEgwEj798FajgggXqBmQvt_X5gPvotugF0S9LBVFWVQ9CNJhR3bEPB6xDj.lMzc.YJwWR
 xz1rawAakzglR.pcuCT5wb8ANwvKAxE1Z2FouXqoOyelsWkmSRKzNoqCfSDYX9n8snSLpynIpVhl
 UnBN4UQjnVhq962GObnx2kLtcO0nSvG9B5gIxznr1.iGtbOdoM8FAnsVFKMq8Y.kQ737hT0s-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic302.consmr.mail.ir2.yahoo.com with HTTP; Sat, 14 Mar 2020 22:48:29 +0000
Date: Sat, 14 Mar 2020 22:18:20 +0000 (UTC)
From: Olatunji Martins <mark_esq@yahoo.fr>
Message-ID: <1927746491.1296012.1584224300931@mail.yahoo.com>
Subject: Greetings
MIME-Version: 1.0
References: <1927746491.1296012.1584224300931.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15342 YMailNodin Mozilla/5.0 (Windows NT 6.1; Win64;
 x64; rv:74.0) Gecko/20100101 Firefox/74.0
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
Reply-To: barrolatunjimartins@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings I am Barrister Olatunji Martins, personal attorney to my late client who left the sum of 10.5million dollars in his account and die along with his family. so i need a serious person who is willing and capable to work with me with honest and trust to enable us proceed in details. Barrister Olatunji Martins,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
