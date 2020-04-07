Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD761A04B7
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Apr 2020 04:05:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 763E6868EF;
	Tue,  7 Apr 2020 02:05:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WVLOc9q1Ouuu; Tue,  7 Apr 2020 02:05:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0942E86901;
	Tue,  7 Apr 2020 02:05:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F070B1BF3A8
 for <devel@linuxdriverproject.org>; Tue,  7 Apr 2020 02:05:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E95CF868D5
 for <devel@linuxdriverproject.org>; Tue,  7 Apr 2020 02:05:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2tMZKrhxi48y for <devel@linuxdriverproject.org>;
 Tue,  7 Apr 2020 02:05:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic302-1.consmr.mail.bf2.yahoo.com
 (sonic302-1.consmr.mail.bf2.yahoo.com [74.6.135.40])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 86A6F868D3
 for <devel@driverdev.osuosl.org>; Tue,  7 Apr 2020 02:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1586225109; bh=Fg3WtxlXn8YtjBZp6f+rgadlup5S6Aj1tp9w4U2iII4=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=E2sbJx6m8N6l2InxVa3mA1btX4h4l360t6hF+Mhsvc6TJbPCFh7BZ0/QWOY0C+n5a1YTwqlL0wP8EuDkRTlRQNx3UNAE/BT3z+ob5c98is2vc+KegTfF28OjZPejMRvEA9Ou1t+WaelDyQHFWPx+jyEInc6GnY0wd4pHIe6iebQDlhTvKpGonibJ6dHh+o80ExGUTj0PgL32cXmYLUgEJAX/ee/7Lz2adIsKjKsAnoSLheXhyfbgjATFvIzGOlgHb1WMj1JEJOj7aTO2+U31NznPy08SwHEqn0FTpZz3qboVbxqaSwSDcCmXyymRhunDERDBsAWKzMhpVa9T2omIGw==
X-YMail-OSG: VJjM2UsVM1mgDrWxraqs18Y4MeWX6J.M3E0NudvKigZQNv9yj8p75N7BrjJ6.aE
 ch.3a1BglLt4wlCyQpHTyRcdUnHfUWaxveReIrkS0JYxdYAe4zlJxYT0Oei.7fIN_GANN1J26Dno
 rfAqgBSj9nNdFrjDYU8VfPeLeeUpcHcIGsNB9QZ3B5qkMWuf60bwPEfiYB8VcGKt5bkDMPExroTC
 StxEMbhN_ppKBLV2xoWIaXXWc3eMphRpIGJ1eQNLCdxzCPippmZnBEvNtGRMAwk5CeFJuXaCOeal
 QcDu_cYxmT9Aq0fSy_5CWSbj9UAjDAB_EFpFq4ehxd0F5CDoPdp_dnMDvMoygAKiQ3vNCcCv_dFT
 _zR2BXfieFSk2sp8hk9bMi1KyEy7WgTE_TJmj77nh2fDlkCeA0O.p.Q2zH0CAEAVZNw7Pj19KyFr
 LXd_WYHsghzZ5SnYR0mctgAmCihN6c_tx4IyYqjrp9XNcGdR1Re8xipad8Bz1xEbQvZpqk7mGALx
 rtdmufJXeLbLXqykGjSJEoPSKKomQGqmfAS9vo5y.vtMSBs3QQ5f48YLBbrI8iCqoK9ymIkSAJn_
 N7eGYnVnbUMW17MYprUEyVyjutsVcomi2S_WrvvkmNeVO5IJSgJdIMzrJanYXMVbn4wTGnkYUJ01
 NMXd61PH6rpSotk1u471BSrFeoaDrjLYmxa6e2NtLgqjlFG.ObQJbiql9KhHQQNhMSeex7ZAP6n2
 NwtloYZD7WEExPa27IjuA3ZL3R6AM1mu3ybT5aKlOsy9jjd2jQH9pthAbeFOr3INDvpPgG1YEJ1i
 ekv9K1HgzwrOZTeeM0CahKngsJ9lyDKz4Tgg_ZAxuIOfkFzURisp6se5EDslvbcTN5DqxfF7.wSY
 qXwGlNyhgnqS3tKXWK62kD5L_GOXcV08sGlJlzo.w.jJw88AcK58UVE6Ok.eIAM8Bkqbx9Df1dpJ
 NhzIjKrrfyTEoUYOyfxJbo1f8at1ww6ky1V.W9ZBPd3Je63lnnzAlHjIqTdjLYLI3ZObrogNxNmZ
 9kIL4Y2lStgBuaYrfcs1ExPji4hYXWJ.OcHGeGzWFwxtfqG3n2hFN47SlRH1UwXWmi.OBh9lqjaJ
 jc5lTqlrAF5eAETjw7E51u25Pf8PFDChIps9N827de4VQcfF6Iqn47a7Q5rdTVwvOEJPITdxPxMc
 ckH936LA.YRQ5B107eTgi0KZgcR3nzb.XKfaCF8up9e87jjNHcoanqng0sKJ7I_sZCF0sImvZRzB
 c.YXC3E5psuOPkr3YcjrRfVAzX87OGNYR16Ivwi2ZSKPZhnr3vBhJI3E.9jK9Qak7
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic302.consmr.mail.bf2.yahoo.com with HTTP; Tue, 7 Apr 2020 02:05:09 +0000
Date: Tue, 7 Apr 2020 02:05:05 +0000 (UTC)
From: "Mrs. Rinehart Maaly Bob" <seemary99@yahoo.com>
Message-ID: <624214705.1091640.1586225105021@mail.yahoo.com>
Subject: Good Day Dear,
MIME-Version: 1.0
References: <624214705.1091640.1586225105021.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15620 YMailNodin Mozilla/5.0 (Windows NT 6.1;
 rv:74.0) Gecko/20100101 Firefox/74.0
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
Reply-To: mrsrinehartm719@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good Day Dearest,

I am Mrs. Rinehart M. Bob from Australia. It is understandable that you may be a bit apprehensive because you do not know me; I found your email address from a Human resources data base and decided to contact you. I would love to employ you into my charity work; I am ready to donate some money to you to carry on the Charity work in your country. Please reply so that I will give you further details and tell you about myself via email: mrsrinehartm719@gmail.com
 
Thanks and God bless you,
Mrs. Rinehart M. Bob.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
