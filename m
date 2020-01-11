Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C08B138190
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Jan 2020 15:34:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ED3F788026;
	Sat, 11 Jan 2020 14:34:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2XsPK-6nSy4S; Sat, 11 Jan 2020 14:34:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3EF5487F71;
	Sat, 11 Jan 2020 14:34:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 96B191BF333
 for <devel@linuxdriverproject.org>; Sat, 11 Jan 2020 14:34:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9094D87F71
 for <devel@linuxdriverproject.org>; Sat, 11 Jan 2020 14:34:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qjFdjHz-wuMF for <devel@linuxdriverproject.org>;
 Sat, 11 Jan 2020 14:34:09 +0000 (UTC)
X-Greylist: delayed 00:10:01 by SQLgrey-1.7.6
Received: from sonic305-21.consmr.mail.ne1.yahoo.com
 (sonic305-21.consmr.mail.ne1.yahoo.com [66.163.185.147])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 24C9687F3F
 for <devel@driverdev.osuosl.org>; Sat, 11 Jan 2020 14:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1578753248; bh=DmkTvZkepdU5kUMwAmt74xA8DmorsmwTn/0A7xPKp/E=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=hrLQ55cC3RJn2dsgplOILXCb9LiLe9IRfmpWC4S68UC/FjjAYbznv5MFA5HklPDOGBALetXm1ObSpVMCQ3lt3GRGsY9cItxUKpsmzfQeNnjQkAV5GQivTeiO6Zjs57ZLa/s7PLYZdrmj6IACUMF9T8I/F9hAoprw2tNYWu4ZDDBTWTXsiAP1aFGuD0/YkyF2fAve/E7SeoK272MHXda7OMJbZBKU6qhQzG1PCBY4dp6eUbeWwUYAJXzh4cjZZPd4XWKqqYZWnzGZfgDBMQLrcL+HYhbq05ok9cNdEjWFpO88y3MD4mDymv/OEYckwBSfPNryyjbAQYsU2DfGU3UdSA==
X-YMail-OSG: mK2KwZ0VM1lVAvIA5v9uX40EGYPCpiFfD.2MB_Z8SPV2TwXkswqoaLzhN1qGsU5
 Lvr2pJhm4bcsFyFdarWuAKDBDzd8CvBdGv23Z3Y3rhAKxWemSmSddTdKT0j8F0.E80sdMb4FlSGn
 iZYuVfZGG3.ptVadV7ykrFN2fstzoEvw29ENNAXJru4Y3rVL_f5F0yh5icHRnFFFzf4Ys2oj6itr
 UOK.loVus1s7EqrCtGUfQluXjvFdBZx5H1RXNegv73WzY3bcnAZkWlOrVu7eYv3Qcebou0ujN0f.
 4ud71DANk3Ue5pnhehHtaP79Rm5MhOJcRnHtgSxSNdp0ZiPMoxwVAzEFXRC7JqxlLBCskgTJdPJx
 KvGH44WX315K0d8uFcCuJYtNQzO3flIiBZ5zOQe3kDAadYAVPEYFBEmvrKxLGAiff0eMw0iCS8ze
 BRWlEB4KqZ5DaAS3X8IMaY62yIIifKLLhpFfjWGX2.EqmRyICnfxzSU4k0SgrQ80tiWuelr0GSJh
 tFUM5158acK1rKcuiBop2j7WxOm0ohDZ70o6LOLAXC7YUHmJVJ7J_MwbfczuEFWBr4Fj.iLWju1B
 2jccOoZKtzYALbhJJJcHLAGyBkkd_x_q93Dg1kpNTu8R5K7UDfCL9urkx5lzSJNC4b0BRJdrkSrO
 XR4.4TkLk7O1tPoiNiPB5JGWpmYFma9beDTAIVOtbQEEv4ju5igVcqectQWrCZuZtPLleL.oB6Vl
 VjN86ngKvZkDJHklF.fyt_9dphBtfms29tpUslNNDOTC61w3xY63y3wW.2xfjxC8Hh2QuB2WvxCr
 G4_ByVKRW34K24g2.2jiIEBSA.p8jBSk8zMs_U6ghgbIigcjHWNyanmDLtJcxvRTobVqf7JQQJ7C
 8BDvRMgryZsJkdaFHsg.FWUpldNZSbvlGjx5TeU4NohUoA5tARHkGF7QWdvKu4xTVXRs2RVahKHa
 Ea.4DWPOY4Lpt7loSwO5tBR5wIcoxo5rOvJGKE8H8_0s890.Sb3.yoM.HzYlH5UAj0tZhVjDvM5Z
 dRmK0Z3sKM4jVHOBCXceKHt1u8G_x1J5RiKNIl94hU4R_EGjfx.M6s3pJB4ujRpCkozEXQkwzOr6
 v.kzOX8PTiD0Hh2mRvFFRqobYipsposL51c_O5_n0V9qRqLMsCNwN.LwZr9zMSd06mGk8EW50d8c
 6Y2XW2UAMg8BmBektGok.ypYIgCzuIhU9xe4SaKpGcMH_e9vImk5xHK3pKGuIfXPLgprNldmfpy9
 ji8Zihd7WMyHC2bXzz900r1l.xEyMBKJCDs.rx.b3rdaFtCoOqYRnqDrM.Q0C5hphLeYLMWY1QVx
 H
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic305.consmr.mail.ne1.yahoo.com with HTTP; Sat, 11 Jan 2020 14:34:08 +0000
Date: Sat, 11 Jan 2020 14:04:00 +0000 (UTC)
From: Aisha Gaddafi <awesome.gadd4fi@yandex.com>
Message-ID: <1265372679.10087276.1578751440895@mail.yahoo.com>
Subject: Please Dear, I need your help to invest in your country,
MIME-Version: 1.0
References: <1265372679.10087276.1578751440895.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14873 YMailNodin Mozilla/5.0 (Windows NT 6.1;
 rv:72.0) Gecko/20100101 Firefox/72.0
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
Reply-To: ashiagaddafi012@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Please Dear, I need your help to invest in your country,

Dear Friend,

I came across your e-mail contact prior a private search while in need of your assistance. My name is Aisha  Gaddafi a single Mother and a Widow with three Children. I am the only biological Daughter of late Libyan President (Late Colonel Muammar Gaddafi).

I have investment funds worth Twenty Seven Million Five Hundred Thousand United State Dollar ($27.500.000.00 ) and i need a trusted investment Manager/Partner because of my current refugee status, however, I am interested in you for investment project assistance in your country, may be from there, we can build business relationship in the nearest future.

I am willing to negotiate investment/business profit sharing ratio with you base on the future investment earning profits.

If you are willing to handle this project on my behalf kindly reply urgent to enable me provide you more information about the investment funds.

Your Urgent Reply Will Be Appreciated. contact me at this email address ( ashiagaddafi012@gmail.com ) for further discussion.

Best Regards
Mrs Aisha Gaddafi
ashiagaddafi012@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
