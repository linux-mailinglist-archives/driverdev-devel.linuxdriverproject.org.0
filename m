Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB03B1B7D86
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Apr 2020 20:07:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ECA382156E;
	Fri, 24 Apr 2020 18:07:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b-FPZoSToWUm; Fri, 24 Apr 2020 18:07:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 62CEA204AD;
	Fri, 24 Apr 2020 18:07:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 523401BF20F
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 18:07:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 481EF20526
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 18:07:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H63Fe7TJPQlB for <devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 18:07:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sonic316-20.consmr.mail.ne1.yahoo.com
 (sonic316-20.consmr.mail.ne1.yahoo.com [66.163.187.146])
 by silver.osuosl.org (Postfix) with ESMTPS id 4A814204A2
 for <devel@driverdev.osuosl.org>; Fri, 24 Apr 2020 18:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1587751633; bh=7ELyVF1TY+atgcMFgVn9M9BygqHRBcTANas5h4WBA6Y=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=h2+ldgZls3OSW6ZoT4u9kHtOhZtcHNHlEFnSqqx9i5OzljyjbIy4syW17o4g7UmaHx5IZhnZOqar5CWoCMIpAmv7PusLfHxQlUj9yWU7tppnvLHQQUGm5cgcMVAPnucGpeQh764BU4oUT6GzH3X8Th0eveRepIQxYidSP6VzEaPJ7XKMSHGgT32TK4NXOKfQleD/ZZLBNTXsVNGChfHe/WklydpIOeubVHjlnVSfCoBAtz7/e2j53GPL1ApycGsvlnm1ge3qoEVF2OAZ5LPGKv5FCB6fG8eqgS9BLTuh3k2Y0ji3jH3jRtVBXlMpT5WFoBt/MHb4hE4z0ttHqbY3wg==
X-YMail-OSG: ZJBmn9UVM1njXX6APIWk8PHlZdXRxvUbLkXGrT8EiNB6dZPzmpV.5tH8mTJjBCV
 72OeioKTQai7HwOOcOEUeAjoAKCd.qqKEhLKK.L4nTvNE4BSWyoiTFOPGdl0bag60slzZL5VdPEo
 qsZRJ872wlWBqN9eMuo2oOKs1rGtHSafi5km7S62NGrtqbDXod5RF0SDmI.iAtsXI43gEuyf3lGm
 cm3fF.YDs_0akFzPy.2YCk3Do6g95KGRDA2x1SNkXRsPC.Dcgl6eXDGxRt445dz6DfCO8mO23E8N
 qYoZU59tLwzKcWfD1Wn7Ws61JmvAYczB60C3mdNebOrTGVb7dFyDS9xyuoSeTrq1_biji1CsVn3E
 Yg.ZaPciZUWu5a6znMBsSJG_QhpIesiiJZIN.81zQFF0phrF.KTMcjvZVZwFHE_DwY.9suo44qEC
 0GjeQDl3ueqC62oBzrpBsj.Vbf1IcixkdI_z0vqmFUGBW16bot.b1eIx.HdB8MjzYLyotzaDWdYh
 vKBEnalpGCvDbmNfpVJOW8y0RNTc0Dvn5BvAXX6jio9Xj7sZO6hCxEUpHHCQuSTKc62UJr6qWlzk
 aBQ6DJS_0g0TIlCih5KFjOcnCD9nx0ymocWcGB1Ftq47BLxDMINQNPol9T7FoEmo2SB4FQZtO7vd
 xv2CVTuls3IBkX_q89R8eDYFhhpB_VD1kHFFAELCMe_9gZh0U8jU7OaAq5xzna__sXGDp_3sV1iF
 C5w3dEWBMu1emgMnPmBFaARJiiZV5m7X3kibqO0bnwqAwliXHpQiMXLQhSoFfC0RiwY38NSqLXJx
 LHU6iEMOvxTb_..U6MUdt7ahLtg2LpeEi73w8uUjpXNVsk24IJMVlE.QuRyvKzCoFS27G.AOUAXo
 xOwBt4WfLFtmx8ihR5mItOoFHmus.h5bOo.UspctpgOvKT46fgS2AZHebAUeza1dWh3cOMKlwU31
 uJ.F9HQMrTnYscgB0TDNuvbFoXNF.v49ncuB3dNCib7ryCImNuhQDgvZxTKDlp93GzMN83oRAQpD
 wkkiVfll7MfvOoh659QBmm68GudCLu57NixAIblrNEfxadd0IxwGYyX6euluIe47hHF1PUJ1qfvd
 lKHTrLtyIwY7mlHPhVHCl9qYIF00fcjNu.uuLYgNcr95ipHkKP6tbFAsWdrOnG4i2j67LEkm.uvD
 yne69AK.boSvKbli8ls6nkRPtZ5klsMYNWA15T3Z3vxQPbmRTdbxD6gj1OkVIBYw6Wbw14S1rVEw
 X0Y0c3WyDdJ0XodhGtCiw8fym3c3NCLpkp3.oQ01jW5nw_HR_6V0_xV0fo8EJB.gQ57iyS8M1gbx
 h.p7C365roiP8wtJvNaKA0IeLOzFpAQ--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic316.consmr.mail.ne1.yahoo.com with HTTP; Fri, 24 Apr 2020 18:07:13 +0000
Date: Fri, 24 Apr 2020 17:27:05 +0000 (UTC)
From: Keffier Robert <inf.org28@hotmail.com>
Message-ID: <959078137.295246.1587749225396@mail.yahoo.com>
Subject: ATM Card Delivery.
MIME-Version: 1.0
References: <959078137.295246.1587749225396.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15776 YMailNodin Mozilla/5.0 (Windows NT 6.1;
 rv:11.0) Gecko/20100101 Firefox/11.0 CometBird/11.0
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
Reply-To: dhlcompany71@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good day,

I wish to inform you that your overdue payment worth of $1.8M USD has be scheduled to pay you through certified ATM Card which you will be only required to proceed to any ATM Cash Point to withdraw $5,000, 2-times per day till your fund is completed.

Meanwhile, the valid ATM CARD was registered with DHL Courier Company as a packaged. All you need to do now is to contact them on their information below with your delivery address for the immediate delivery to your giving address without any delay.

Manager Name: Mr. Gary Waddell Jr.
E-mail: dhlcompany71@gmail.com
Phone/Fax: (+234) 808 417 322.

Thanks,
Mrs. Keffier Robert
"IMF" Fund Delivery"
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
