Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEAA13F0DF
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jan 2020 19:25:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE6CD865C1;
	Thu, 16 Jan 2020 18:25:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DtEKPUD436Dw; Thu, 16 Jan 2020 18:25:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A0F6D864F4;
	Thu, 16 Jan 2020 18:25:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B53121BF3D5
 for <devel@linuxdriverproject.org>; Thu, 16 Jan 2020 18:25:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ADD0C86B3C
 for <devel@linuxdriverproject.org>; Thu, 16 Jan 2020 18:25:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S9SdwmMbUwgY for <devel@linuxdriverproject.org>;
 Thu, 16 Jan 2020 18:25:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic314-20.consmr.mail.ir2.yahoo.com
 (sonic314-20.consmr.mail.ir2.yahoo.com [77.238.177.146])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3964A86B43
 for <devel@driverdev.osuosl.org>; Thu, 16 Jan 2020 18:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1579199103; bh=XH5496/BTTf0SF6FN2/IXMW6b+5aYIhMlERPJWSTRUA=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=TSB6WJ/NLKzfZMqB/t+DRwvvWbqJurQCyt9aUMBgYCFNsT9IfH9ktUHq0L/0Fk9UXdzBYjaABvNPUoiXCCaPs35X40t0/hEAUzTmzgmuUX1msMmdeI3vNTVrFtsphfuCRJpQtEXX/LmS4w2x07R1wk04Vv3s6hYfLrIj153WNEF9Z2bVKP+2AjGgyoOEuisqXmSktsEVJ7BrcIInakNp/bFRIi2fn0GOW19iKHeO1l8Z++g+OV3pNTAwWbQX41D1tSZqQTxqQfwK04Nnz8gojRzvkB6wgft/8CKeXu1fkvmDLlSUwJAc3mCfM2Xn1NCCqoLFbvppUEpC5Z0KRMOh2g==
X-YMail-OSG: IqS0IEQVM1nmpyQTtf9f2FMW4ImK5UVXlhYjhoBS8bWTGjnjwLiwGcWD3T4dIFx
 lwqKGFWNRDkd.W4N0Qq5YjTRk7KQ4HGWCBbHoMORCraj_13DhQaAHJprFjs_oF6EqLdTVsdWY7Bg
 q7vWfZdCFo_m33j1viJhLxUhVwWvUdPbzVAoTXk4RojEsIpfCRgia6M0teqn9PFHCzaTRAyRP0od
 iDvmqs95cLT3jmGGUy3zsCWbWus3JC.MxY2W3sIXyVVsc29z5c4U4Wh5_Kp58LHEDekDrLCg0X0Z
 1tFG3QATThZiIn093i6yKCydUpx9GGTZfl.Jr_g2UbD3v4vsVXvGHoi_vN3fmfg1v0G.09qD9kIr
 Hefq_kx9_giW6r1xuXmWJ7hIpP5GLEbfAwrkt7cxfA7YgK5IQMommmXxWr4PTqfrr5qslc0Fm0N0
 J6GbcK3ykewV.AM5CDl9qPtdSGQ6RCzymY9g7dmi_.NCEhjcbnqiaei4AT.pJJAd6BGKDo.ffTuT
 sc.z3_tuxpfeT3_w545H3tjGW2NDVPqi_UgCq3zP5iFWPWQ9nHoCsU84Uy1DR6oofjogH6MV81el
 _IWb_wK1jEqunymSvEY8sbl.J9xBwoARGbpxfLIHcfnu.SzlZ3nZVb_o8l8X0VonoVBiQoAVBB_u
 sZHJzne9hZGV7fE8tbCM17WCewBlvMFWRBB85m1FJSIljGywdyJwXi8gP2xxQgouDfYia4Pc3t60
 bW161AoMUCneTuxmJMntixoqZfOSPgsBB5MJe.k5OXaNXXxp0moboqCulPOm90wYbcStn4wfCrZV
 UEQF.VYZz0_PaBPU7d3qhe6bbl5IviPDG7PhaJ3AC6SgTPPEm3HuIzCX8Ay_4UvwDVQpV1y7smlF
 V.nHnpUgjr4hZUSwb.cTqHTC9yEo2TYz1NGDaXLFgruTWRPaj7yg9RuG.stXQk1EWyyT1LvNww0b
 w7RpjHXGTvYds1dyRJ.zk0huFLSNJu8H0V8u9paEET9CD8Ie6ZXEYNfyipDsBg6ZVUQZXPFrCA4G
 HzMZXY0Ex.2cBHGuqNMpA5LIFKUSbhaE4Mu8U1CYX8HquBITpBDzxMUhBaemKFmFuOwJNDDO7pET
 lP_St2byMiY3ydmC01DdOth6kp1UapsxIfgDmRPNPavY2hSLzZKY5lZNzAw1KzYskdLkT9VFbii4
 6M614BIIrcbrG4zOVHfxR_rVZCkGZkT4OCDnJthdy9v4zzJT3qM3R8k1pNgd1aEG03l2dbLbiU1J
 TilukbBGkDn6Od5t7qpwaQpAfmQT2HQ8LH6GsSUgQLEHtGXUlI6eCvg7Rma1vBI4w6WJdXtsh
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic314.consmr.mail.ir2.yahoo.com with HTTP; Thu, 16 Jan 2020 18:25:03 +0000
Date: Thu, 16 Jan 2020 18:24:58 +0000 (UTC)
From: Vivian David <ritajohnson1998@yahoo.com>
Message-ID: <1270509417.21209122.1579199098646@mail.yahoo.com>
Subject: I Need Your Help
MIME-Version: 1.0
References: <1270509417.21209122.1579199098646.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14873 YMailNodin Mozilla/5.0 (Windows NT 5.1;
 rv:52.0) Gecko/20100101 Firefox/52.0
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
Reply-To: viviandavid925@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>





Frankly, I know it may sounded very strange to you, because I contacted you because you are a complete stranger

I am the only child of my parents. During the post-election civil and political crisis in our country, my parents were killed by heartless military personnel who supported the president who lost the election and refuses to resign. Luckily for me, I was at school when this tragedy occurred in my family. But thank God Almighty because I never knew I could survive the shock of losing my family almost. My father deposited in one of the major financial institutions, the sum of eight million and six hundred thousand dollars

my late father had a written agreement with the financial institution that I should be 29 years before I could have the fund, or business partner or guarantor of business. To ensure that money is invested in a very lucrative. As I write to you, I'm only 19, and life here is so hard to deal with. There is no chance of me waiting until 29 years before I go ahead for the claim the fund,

I want you to act as my business partner so that the Fund is launched to you by request and I could move on to your country and we both have money invested in a good profitable trading area of your choice so I am interested in Real estate the business.I promise to give 30% of the fund.

Thanking you a lot in anticipation of your quick response. I will give you details in my next mail after receiving your acceptance mail to help me ,

Yours sincerely
Miss Vivian David
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
