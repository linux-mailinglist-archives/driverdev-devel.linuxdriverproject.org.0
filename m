Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08316188384
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Mar 2020 13:22:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5333F2630B;
	Tue, 17 Mar 2020 12:22:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UZXaMYbs98pB; Tue, 17 Mar 2020 12:22:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0473E26150;
	Tue, 17 Mar 2020 12:22:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CEEB71BF3B9
 for <devel@linuxdriverproject.org>; Tue, 17 Mar 2020 12:21:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CB33E88677
 for <devel@linuxdriverproject.org>; Tue, 17 Mar 2020 12:21:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wh1BnEAZ+fEL for <devel@linuxdriverproject.org>;
 Tue, 17 Mar 2020 12:21:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic316-53.consmr.mail.ne1.yahoo.com
 (sonic316-53.consmr.mail.ne1.yahoo.com [66.163.187.179])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9E0CC88633
 for <devel@driverdev.osuosl.org>; Tue, 17 Mar 2020 12:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1584447716; bh=kcevCRoll2+Bsa3FDERpIV72LVcB1A4YV1b5N2AWYBk=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=p9Ls7f4cDo4NLJmSMI06UxEGN7y+0XyhSKYRfKWxpi/gWu5vZ11r5zNujzmYILI5Op2SZevUg87LCoSvpOFc6xiU6yPqxNIhjObhDvnLncCnkBs+p9G+AgT7wcvt9vXXj//h+L/ZgDbo+1smIzKtSR64/wae97oSmr6n0hfY129onYcaXqN8af4m3sA4kvrJoEid+GxMV7CuJGaE0fLUwLhHEkeY3eRRaORft+rmJnIpC7I5DkIf5crsq/M5VtcRA2hD5ByINfdUvHRMtebnYYb94K7I+lk5I3B66Ue7xhm6Hq0rS+2JeL5FGvC3OfOnhriZEZh5q+7AtqpFGenTfg==
X-YMail-OSG: 1HTxhrwVM1kZE2_6l5ymOn55wL.OWIsR9auq.uEqq_ZHTQie.PaPJpxl5rp9igB
 FCikKZTBgfOj8BtWp.7dvKTeASz9ejKdjMoqxE0hg4RSPq.Xd74XcI5VEnMkqJkyztk67cbM7Or9
 unzm5W7a3GjGw1sOHs_4l.tEhyFRVj01f6pdEhXinjs1ji5NymU2z43mkQDygHNj16YBZa9wTB07
 moCD3msk0w8_kdkp22fpPwTX4fLTEmNYBk21vXz6HtPk0.6b3kVjtTGK6_ZZh_OYbaLCc5TFSvT.
 AENtXRny18CK0gOejXVDH8ptfkWZF5lg6LdBoZiGU43ZYWbhjIXMSDsrYPX.SYJZG3m6aL96RlDc
 4vm72HzxkuZRIQhMed8kwuXYxZl_jqoyOlhI.nyfIvgsga1AYHOmHv.U_XZRhERMqBF.P5FA.Wnv
 6kMqdwrgGgGIaBeQs75cdTwEmgv5ykzgM2LfpevJOpR_MdTOpjHP08RQMgGirEnMzLLu4uGsG6Jp
 KxzISBhVgXQ4x9lZvKT1RFpVYF.wX6_RTCbllK1_nHOjYKRfnp8EfjyYm_VsnMOFRAnulZztZzAB
 juSj9TeppZ71SsI8u6thVsJU0PtFY_.RdSdkfF0PQaXmIwubwv0BR2gR0gt5yXxJV0kAW.bpPwB4
 8v7fMU_tvJzbYunZIf9a6A3doFdxSkSIuEfQctkuJZxwf955s2qBys5JamCgpQA5LprKLq3.iR.G
 BIyc.9HtBGd7_XlYAWyIBlRYB4dhsVF8_yma6nxIJdOXkg7QBy0U0Mba7DucPundHOuIxwEb5Rov
 KpuYyiiYmAOOobaSJaM8GYdWZLDqdKdCwa.RlA0BHZIK3lDCKK9a76.qpc6gs.WiFFwndlk9SpVe
 CFz52MUKaSLxUp3Y.jhTJdHuxZgtpswiFP2J_BbRrk3nvH_6qaOcGnaxXjwty5qD_ElDn2rmpKl4
 a06XHTzdmDucbtqSf1I5rTyiFcVFiIzSREWbA7Kc8Kh_utzmUu7QXM6J87zt9PxzcFHlBHvtZV3d
 Jt2ydetpORiYIDflivuU8c5bAF93F6tbvCTO1bi7racv42jfg48zkh61iQck2C7pew6.5E.HLDNs
 CDqJWL0wv05joC45oVjMt6mHEACw8YXaKFnoUMjnlrbHwDktN8ty70H7rYDNrKIM_SRj1rjtWOE2
 wpRrOZm8gM..Xxb1sh2OeXwtcuiT16WAIZ8HTAtstL3u_TVZOyW_eMVZbtrQE7M7dhwEAxNYa.uz
 Rdql3UbrnbUdAEu4bpqZDBxt5XwCviqOtp.6WkyD5frAPEgwbHYnAZsPjZPglQsouJX2ttD_S.Kj
 HBXFqHTAuu1pSYJNaUNcIey6u_eM-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic316.consmr.mail.ne1.yahoo.com with HTTP; Tue, 17 Mar 2020 12:21:56 +0000
Date: Tue, 17 Mar 2020 12:09:54 +0000 (UTC)
From: Stephen Li <stenn6@gabg.net>
Message-ID: <2059527141.1811494.1584446994240@mail.yahoo.com>
Subject: REF
MIME-Version: 1.0
References: <2059527141.1811494.1584446994240.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15342 YMailNodin Mozilla/5.0 (Windows NT 6.1;
 WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132
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
Reply-To: stephli947701@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Greetings,
I was searching through a local business directory when I found your
profile. I am Soliciting On-Behalf of my private client who is
interested in having a serious business investment in your country. If
you have a valid business, investment or project he can invest
back to me for more details. Your swift response is highly needed.
Sincerely
Stephen Li
Please response back to me with is my private email below for more details
stephli947701@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
