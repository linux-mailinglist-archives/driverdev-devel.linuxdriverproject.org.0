Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D88D322224E
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 14:21:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5320722270;
	Thu, 16 Jul 2020 12:21:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QMfaRopVhjrA; Thu, 16 Jul 2020 12:21:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 88C15204A5;
	Thu, 16 Jul 2020 12:21:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47D181BF3B9
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 12:21:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3AB6B204A5
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 12:21:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5FAvZdkYZ2Ph for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 12:21:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic308-56.consmr.mail.ne1.yahoo.com
 (sonic308-56.consmr.mail.ne1.yahoo.com [66.163.187.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 64BF320436
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 12:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1594902067; bh=aZ84fmRfVoFrq92VR97+DM2dCDEPW1bCVPLe2xjRENU=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=Q37k1eAZeuCLQjZPlSmUT0K1e4wHXmvbLIcnyEuTmaF5sCmFdyyRNVTd9LympGi3Ejkn2Cl4IX0fO7Wnug485S7FpiKdm9t2T+trc/125TFNbGwMgrscBvc+pJcfvQ2owZqP9lO12kdnmWGu8kFBwt2tewLR/FfslOR2+gfyj2Eb2G+8ldPWp2+8Eb7v/PMoPVOd3rSj0QU9/GVj3c1keqGiIh+mHZO0IMrGNQfwglcp/Re/wy7fr6U5lFAj/0ZyF0VpbehnpeClNmAKeylBi+dKiP8KSYzG+ukr4Dxu1MA7qkAsBxK8i2KOBNdtetsnaOKTWH23fRrGzo7gDG+hZQ==
X-YMail-OSG: taN3EpMVM1nnhndbgVQFDPsUhAGCawzvgwUmLwYKRnroRRqOP05Rsk6ul9vPnsF
 Dk1puDp_tYTBSmEasZKrv5XljuMdUM7MLGukY0lohunM7RUJPaq23uNUdbFu5Dxb9wEsu4GMM3pz
 fCzPLr1I3eXvCh7t3C9hAJJyc3cfhGyttkpQ1GCfSWX102L49qlfwGTnoiuvtrKuffzqDvkmgq3N
 UpbEf7hl1iwNnjCHsIrouGonBh_dkpybv18aW.55Sl2NWbCHCLb0eisafizrslie0F6ArSlU29Zd
 _zG4tYqDCYciJAFjIuQTItV2uZaEDIvfpT26KibjT.T7tfZw2D5CwgUbWBm8xwdZSh7InVGOg73D
 WSkjnwmLjSlY70gThw2PBcAKZwkOggpxaB2JiONogvDMxQF1VKXHXjldC2TltpC4SJCkCR2jOp54
 wGo65UXbDdkPHR37UlcBNa0_t8rMZlda5FXwnSs9po0vtETvs95SG699d3JZGNG9t7mg9paYspsp
 46U..5f0P6begE7HQ1KFVDQsnoaqapA5CTJQwYKtJkf8yewo5v8PLYEtvQyLb56gFXVK3ZYcHV64
 MtW7aPNQ3JPTOcY1bHMJ2NNLpmGlDrhqHxn9aafYHtrF_Iz.teYL_YJS3p2d9I_emG7klgowIhZT
 3nACXsB_Bw7udqDFOmOpaXNJNu6UFZHZoJDJY0r25U0VEIP0dPJqY52GyF1_JBbnydXL7Wk48qaD
 LpStkrzwGrvzkPTDXl.mWoPdsFeonJ63Avnk7DHKQr1UlmrwyGM8koY9g7nyP.Y9mtzYZj1PsLNX
 fqrD9bY2qLbZ949cxx6Z7ua9nDoa4IWNznhMG.EXxI92M.PWhatd7cTplOpEB1Y8I3NlE.aFxgg4
 PI66n6Vh9cjkLF7CZ0Ug3CyV1gM_LfmCAbSCUEVMvBQ31FmbH8QSFjyi9oxyP5H.hddpllUHWVu.
 uluVVceEvIuTTH_Jt.aUIZOz0PBvJSvadUWRTpGMcl9qZv5Wiqncn_bevk6wPh1i0gFB.R_dV0ij
 IxCYFVTyjMn7Dvk1aZSprtXyADgkOW5UuZMUtc9yVGTDaEq924HktSo8LCFJYw30pGRDwGOGn5GJ
 GbfjDQUi7WuSwr3mfAXo793gHsXtGHJWcpVg_SKhPVH4cbSbL0.T0sb6h4Rys1QPAB0z43EXtZT2
 eA7Ehsa8q.QHoP37iqibmcsa2lEn5TjafSiOXvaF1ee8OhhvC2OOvbj3K9z2C5Co3N5Rz458BaFb
 ruQi9vZZXf1ElZFKaehQutySogXeHqa72TSwtm8rOWVD9W6UXR9yA.IddfuKI1iRJ8azd4rm6TA-
 -
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic308.consmr.mail.ne1.yahoo.com with HTTP; Thu, 16 Jul 2020 12:21:07 +0000
Date: Thu, 16 Jul 2020 12:21:07 +0000 (UTC)
From: Aisha Gaddafi <mgovo647@yahoo.com>
Message-ID: <1249055050.2550523.1594902067344@mail.yahoo.com>
Subject: Hello Dear
MIME-Version: 1.0
References: <1249055050.2550523.1594902067344.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16271 YMailNodin Mozilla/5.0 (Windows NT 6.1; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138
 Safari/537.36
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
Reply-To: mgaddafi034@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Assalamu Alaikum Wa Rahmatullahi Wa Barakatuh,

Hello Dear

How are you doing today,I came across your e-mail contact prior a private search while in need of your assistance.
 I hope my mail meet you in good condition of health? Dear I have decided to contact you after much thought considering the fact that we have not meet before, but because of some circumstance obliged me, I decided to contact you due to the urgency of my present situation here in the refugee camp for your rescue and also for a business venture/project which I need your assistant in this business establishment in your country as my foreign partner as well as my legal appointed trustee.

I am Aisha Muammar Gaddafi, the only daughter of the embattled president of Libya, Hon. Muammar Gaddafi. Am a single Mother and a Widow with three Children.
 I am currently residing in Burkina Faso unfortunately as a refugee. I am writing this mail with tears and sorrow from my heart asking for your urgent help. I have passed through pains and sorrowful moment since the death of my late father.

At the meantime, my family is the target of Western nations led by Nato who wants to destroy my father at all costs. Our investments and bank accounts in several countries are their targets to freeze. My Father of blessed memory deposited the sum of Twenty Seven Million, Five Hundred Thousand, Dollars ($27.500.000.000) in Bank Of Africa Burkina Faso which he used my name as the next of kin. I have been commissioned by the Bank to present an interested foreign investor/partner who can stand as my trustee and receive the fund in his account for a possible investment in his country due to my refugee status here in Burkina Faso.

I am in search of an honest and reliable person who will help me and stand as my trustee so that I will present him to the Bank for the transfer of the fund to his bank account overseas. I have chosen to contact you after my prayers and I believe that you will not betray my trust. But rather take me as your own sister or daughter. I am willing to negotiate investment/business profit sharing ratio with you base on the future investment earning profits.
Apologetic for my pictures I will enclose it in my next mail and more about me when I hear from you okay. Please I want you to contact me here (mgaddafi034@gmail.com) for more details.

best regard
Yours Sincerely.
Aisha Gaddafi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
