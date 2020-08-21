Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4AB24D162
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 11:25:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0ED69227A3;
	Fri, 21 Aug 2020 09:24:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cfFsWLxEgTKu; Fri, 21 Aug 2020 09:24:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 954BA204EE;
	Fri, 21 Aug 2020 09:24:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE5EE1BF40F
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 09:24:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DB1BA86C23
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 09:24:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hw14bPqaz1RX for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 09:24:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic316-13.consmr.mail.bf2.yahoo.com
 (sonic316-13.consmr.mail.bf2.yahoo.com [74.6.130.123])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8E5D486C11
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 09:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1598001891; bh=TX+Ee9OTVT2mYC64gbdEGvYsIRxBzqd4YTGQ/Np9TSY=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=O5YUSgr+tRjugWfeL+qXOtcoCSFkjzN0qv/DlsAcQRtGdCRBFuWJ3rKRl2ZpH8h5vk0W98g6D+SabjLcFHEj4LxJonf61IwGJNMam7i153tUjpfI/b0kzZeCQi4qUBadZc7lT30m+yPEo+l9xdWRP8cuXmG+i0pzEOCTguZZQ7ba7pwYqimg7odgWopb72GxMKZUm3E7Y5EaS/BLeABuZE9H4q2L3t1F/d8P0kqpDnL5a5+yZZzcpH0bmTdAgjSFOtSSvVNlTPb9MEsQVjejQU7/lhdGtBNji+gMT3UUFNctxSrb1btAveOV3EbMQ7KbgLZJ3jxGKa0m8pDjRshAaw==
X-YMail-OSG: kjm86AYVM1k0V6aQIpS5tKSzmCa_Uv9w1e897Bftn9suttKVyDrH0zO_7SKSRIg
 Pzjvt7SqNLO1jMeijHzThm2YP1Iz4CYKDnFfm0.wsIVFkfr_cnxxVuscWd7jLajJEkX_toZG_bZO
 k0JNIy6Mh_dPrrE_DOZyUVymetacmZpCAk5dRBR8joLK6.l8JWtZV8udJoMr0eIbib.SQqoMy4.Z
 Fh36gWPpvj4I3asMeA6QvkGAjZqz8LkXEBSCcpqdfeypzfV9U3xtCauP44XxTvL8mHi8iaoLT3Df
 BrOohoHwsSqQqJxbcwBGjCuVuP0oRLWvNFWMAFmPPTWW1HyDGiqBHK.2cseeVo.UfuYU2saBnkHi
 roRD3wEt6I5NB1tJZVYBfkp.YhX37qerd0VDYRP_Afp6VODSY3MdBY.fZCkOB4TTroEahVAlHrvm
 DqdMkQMXcFAZA_cCnGbeG5vU_TyEpmR9eYeAeI2EALprClnMLvfCcFAyLU0pMOimTjLMQcPGhmmg
 UjfXlE30H9wfbTT18358Km8CTWhzN.EzSqQFi7N6hxZIlcKeqobtIOxNsDu64zzO1KJrMRw8emJE
 .E5XbG5Cg5mbhTkxStA1Wq6XcLdjOHDUxkU8WgouTSzICvr3XVqnyshjTmjFSQCK2MeAvHb2SE3X
 e58zCMjynUXoqWYb3nu6ltaX7RdD3PolO_WFIjlz9Be4UIFrfiS1lSBh5it6kiqL.gokcKFOJTUr
 9TCmwMG_spkowStOpBzSYsEFtP76_yXtTQ5nL3tP2VsEWn.OSB9R.wuU_aMOPYqG5ItntjTwx3u6
 1JKfYthhSWIWcHl7XB7QyoL7DrlI8JuTdgaTqNRSE0IwbhB3umXkeIrORNN2u5MiQnxIWdgqrZrg
 3_CiwnQzLIUqZiQWhoGg1JeaCxIoylHuNhIVp4bvtkhg6hqVfSssssGbMDEGs_QMicLxNqQwlDCu
 61UD5.2fA9XT1VvdL6Wt_4Qaa1WZKxFsK2JlemE1eakVCRgxwjf8uezU7bEIrafu2Mac6Ebzzfxs
 CW1FyXGZNR4e7en_GWf8Gy0qGLyKe7PhGU8l4eLNxl.5tQf9FC9dl5uyah7XN7q2SA9eALE3kuDq
 JdN.XDyFfSj7kcO_rXQ3.NAqDx.xprTj15p4zievjumVBvDEaA77aJbG8P0KYz9IVnH2EJ1fnOMv
 WsU4bxdxCOmqqUHx5xyPpbENLS_mGW5mJCVOHE6CHM5WpaZtxFP6jtWf5RHJr9XE5xH4LiTiLIV3
 EFKcVi0A4DgKrTeApsJ_xsr2rv3MX4fFzRER4PAUBMnLtYUPcLUXBK4wyjKkWELjRx2UguH9V2L0
 UBjwlDMjlX9zIdLHC44fNRoB9qtDTN4mPsk686Q56hT2JGbJoxEA5j.pIN5JcbHYAV0rYoR0karQ
 aexAtYWx.cWonUSQ8I4vtAHwwnyKrlLFAxlJ9PUbk8S5.8l5Nb4aBcRZtJTGxHbm4IOJU9NFoog-
 -
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic316.consmr.mail.bf2.yahoo.com with HTTP; Fri, 21 Aug 2020 09:24:51 +0000
Date: Fri, 21 Aug 2020 09:24:49 +0000 (UTC)
From: Lukman Jemba <lucma.temba@yahoo.com>
Message-ID: <763165536.4071883.1598001889882@mail.yahoo.com>
Subject: Information
MIME-Version: 1.0
References: <763165536.4071883.1598001889882.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16455 YMailNodin Mozilla/5.0 (Windows NT 6.1; Win64;
 x64; rv:79.0) Gecko/20100101 Firefox/79.0
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
Reply-To: lucma.temba@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>





My dear,

I pray you receive this message in good health. My name is Lukman Jemba 78 Catholic Reverend father. I am presently at hospital where I am being diagnosed cancer ailment. I have contact you to inform you about $18,500,000.00 deposited in bank meant for orphanage foundation. Doctor has confirmed I have few months to live,
I want you to reply in order to receive the deposit from bank on my behalf with hope I could trust you as honest and reliable to help less privileged with the fund. I did not struggled in my decision because it has been my dream legacy to help the less privileged. Reply urgent and let me know. My question is can you do this, would you? If yes, then reply urgent and send me your telephone number and address so I should instruct bank to release the deposit to you on my behalf for this purpose.

Remain bless,

Father Lukman Jemba
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
