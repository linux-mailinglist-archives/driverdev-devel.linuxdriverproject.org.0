Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C38A660F
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Sep 2019 11:51:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 623262275A;
	Tue,  3 Sep 2019 09:51:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0XS0onBRP2lh; Tue,  3 Sep 2019 09:51:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 35E8A2274E;
	Tue,  3 Sep 2019 09:51:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F31521BF28E
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 09:51:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EFC808648E
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 09:51:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IOiMvjHmJN_x for <devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 09:51:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic313-20.consmr.mail.ir2.yahoo.com
 (sonic313-20.consmr.mail.ir2.yahoo.com [77.238.179.187])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 60A9086448
 for <devel@driverdev.osuosl.org>; Tue,  3 Sep 2019 09:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1567504293; bh=e6Fqk2fy3enHMvxmHapezaRuvKjV2WSzuDughTdIO/0=;
 h=Date:From:Reply-To:Subject:From:Subject;
 b=oPmVjIdoIGWtLobOpfaGoCtKNdU9kw2DWe/wvci6Pyg/JqKsBGAEiPa6jAB5GdwMyztxPKdJpdvDhoCOxCOdMsdgybdrv53NubpUxt/ruArfPy9/tvzmf4M2lCG1BS3dI0bJOZuvbW+1qfyur/3yO29i6XgTfs4or8/yBht1aU4BTG4AFn6p9RJ/5jyNwCAAnswvxV0XQs4WPKZbR1w4exFloxlsY/GlFvlC+bweaev4WPMBa9Nqa4MZYmomt4elvrMv4WSklin92PLYScD5hggQWvWcQoxrWXA4aawENybMbRY33GwdL5vH5WHW+O6FxRE8Sf0WhuIONMCdogoVWQ==
X-YMail-OSG: gsVKKmEVM1lczWnzq8xb9raA4I.oVY9c6_2etfB82RZgdC9MFFCEAtjWme4aSzr
 4iCN6I_BYgKqfhcXkeqCunY6SKdlZ50op9fCjDA1RaLnLDa2h70VPoPtZp.uyGlqiEksOgKy4u8m
 Ou4SQmpsjop81_x8vTNIClR1r.dZbwI3MQkZqKnJsgtrsC4Dt4nVMIDKhRJo4qdK2uXyuoyJgU3B
 JMYjVkrLr2ZZdUgdmhO7_NJhsVTXohxbjvqakErfpLKiU6qZ5thjIU0VLmtQPG1jxF4S0jvMsM_k
 MUsrMkeBid5QJS_BfJcHEqFD0CnkC6bZbn44KZsnqduQX_Uak..lpNjmnfxTMLsQkyCbcT8l.yzG
 bXxcaHUWJW1Tw_BhEw2c4daSFAXQHu0H8hQF.FKO.TgoFb.vab4PDg9oZI8CoX13O0if5CxSEia1
 S5rNVr_VtjdOjVgCPJY1fs_Q8JOExgtcakRiLgMR2RVJtP3ys66N8bxe63X6uQr..vsKLQ6gn98R
 nmmTVH6d83diLHVWIdr04bjmmmCi08W4otYdgl0y7raXnTazwa0RyaScQDFDOk_rjyNIrAJUGE3i
 dzxfPRxVcDjRZDAJyLo5rsXXFcmeRRwgCDMmPfAOMBP9WHLLWbXU25rAK9_Nc5GxGb_ihviHpkPm
 0fpN8m_r7OOS69k1BuC8mwSfQdIHDWBjiFMN8e3nrqgrdooav_3ehYi0cwxcT.QXu1XugPijyzSR
 IlIrdwKIDJF7RJIsWdWeY2sfite41DVV9L9t.LQckTxPz1I6XbceS2DezTuba4FPaPp052QHe057
 m_2hm7udMCkKAFQTAEPaLu4zcwDhHfk7vx07JggmTO.RQZfgW8kv_gjHWdazj00yRBgThTUShf_4
 dzEVx2R7KFZs8hf.Tb31ChKODtNO7jHo9IpBcOpSQKwyqmgFqnqthr67Rbla5xN3kB39qdkY6YE2
 oIcq9m27IDZz2djbW8MucXsRc4vxP.0HzFJduf3yv2tGuLODj0u..LxVZg.7Kto9_cm9137ILGf8
 Qg1CjBlv_ByFspYMb26KmoBGfkff.3WuDW8VSY6ALySf3sqC1ojan7s1YMlaxucYiXYAy4ePJ0Qj
 4pVzQAtxXOxvRPehj.coyyi4sJAb9d2RirMKNDPZPVlJw_PQ8Y.wY9YLUSi6UuH9GUh6WME1UkU6
 U3iOk3PlIaF9KjyRSsuwGNQeaHoHOVd0xV7aqY3vrflOxTwxAln0iBtrBmvAfSA15KA--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic313.consmr.mail.ir2.yahoo.com with HTTP; Tue, 3 Sep 2019 09:51:33 +0000
Date: Tue, 3 Sep 2019 09:51:31 +0000 (UTC)
From: Daniel Seibert <danielseibertwa@yahoo.com>
Message-ID: <720588885.2557493.1567504291490@mail.yahoo.com>
Subject: Donation
MIME-Version: 1.0
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
Reply-To: laetitiamaurel.sgbfr@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Donation
My name is Seibert Daniel from USA currently hospitalized in a hospital as a result of cancer. My purpose of writing you is because I was led by thespirit of God to offer you the money that I have in my private account in Abroad now that is clear that I'm approaching the last days of my life.I'm 83 years old and may not even need the money again for anything. I'm offering you the sum of $2.5 million us dollars as a donation for the work of God and charity.When I hear from you, I will direct you on how to receive the money.
Daniel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
