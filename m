Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEEC25EBB9
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Sep 2020 01:21:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A1DA88692B;
	Sat,  5 Sep 2020 23:21:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T0uGv1mhi0Mv; Sat,  5 Sep 2020 23:21:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 763E1868AA;
	Sat,  5 Sep 2020 23:21:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D5C861BF33F
 for <devel@linuxdriverproject.org>; Sat,  5 Sep 2020 23:21:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D24D9873D7
 for <devel@linuxdriverproject.org>; Sat,  5 Sep 2020 23:21:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3jqNZTAj2Vpu for <devel@linuxdriverproject.org>;
 Sat,  5 Sep 2020 23:21:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic313-9.consmr.mail.ne1.yahoo.com
 (sonic313-9.consmr.mail.ne1.yahoo.com [66.163.185.32])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3939C87377
 for <devel@driverdev.osuosl.org>; Sat,  5 Sep 2020 23:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1599348095; bh=L2gqQLBGncqe+MprhY8+G5Q64NzPa7pslg2nGpaQtao=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=lGZeArTUryZq8lBQsAHJ2Wpiinp6nqMQvFxZdot/bezaR3KlZlZFwv3DLtQQqVUSQE/lp1kBDdoHCNkcdUMZlAUikQL8TMzEc4Ne1Oq1kIvyMDMuVqS16isCiA+wSItiO8mmseDOkRbyrMho3Tby4k0GGQpbBgGIHmj0BT9nHYeWwbIisNFzFpp4LI2HUqXpD9mDQSGl0dDB3vL4omNwzMtV5GFg7RRkaKn3VsnKcRproneUS91p6cq8lOxF3pcnX/aWq8p1Z5TtBOHHqCoG9ObpbRtM+cKhDPByMWhTzeI/909oPhckFTcvPBjeuMi8beguK3QQuS/0gnbL9TIw9g==
X-YMail-OSG: 9Z6ztqMVM1mqRBI3RGZC8tix0ksI4PCBa27.iiVqHlaYLl5bVqh14A0lSsd02iG
 LAFwf4QVH_dyHGnSOr7eVC9oBIgWtb0xzky4qLmQIdmRPBjvhD5M3ELMoG77.e1TDAYg6pbp6dWo
 6ByxWOyL0DzFKTMYsEWFvN_XSeeLlcYr_kbGJjXiZSxtzj5GQTdWC21vv91mJPWYHPUwfPog3GKJ
 GHHCChjF9ajtXmDdyax4QfE3b_huEG9vNzj3vhA.Q1ofhDa2VbLEjtbg.xtymX3Mefr6AHTLzYUn
 AScSTbcwyxYOTNNKJc_ppWFEUMCj6mG4S38maBP0uLrvJrH.zOQVaIMsYkfQAXCZeKOmkwz_AizY
 wMI5.LljLFoo5hnxHVGIwVFER4XG5JyzdMf2MVVl.QbxOy1G0V9YUesiTjpdGavWOby1ucagJ4vN
 _HWzGnlfCOLBhXpELn_f_aAfenRbI1fGLIVWYn7VzEktVZgfev8pm7pMhEFk2I.rqZPdS3wEUR1T
 XtsHPHLo2WGBA_1nun9p0RtT_MrsXHBJyJyXbXhWFext0wjZVCqn0zK_yJchjwj1TPwxTtLUOS.g
 oukx7hAO1dtX_1o3X3CoujmNMbE2qF_V8SOv0po6.KAkHNaSlS24Je7N0nhrbh3HDuFlGVB8Mvrr
 pjGCkzt8B3SV2hWAIhNXBP4iDbARGVR7.qHiPX7ofbQDip8xDhZBDOK1WMyHwrFhfC_JDHGrxZHZ
 3jZpqQM9dunqudjcLWH1hnIoKXlZc_az03pc1vIa8JLVivGYmQWzaDjs8ieqkacOTFxi.0QKflhH
 MsZOi.QkdazUDfbLEXJ3D2urxUMEo32THE8H7FSpRlw1b5p4WR836slgGrPm.EsdXxszik92uw7Z
 LRixpFwZ.o.Vt6TdVa0GyDj8sXKIZeRtBugDcDKhO1M17TMFxk93QTAHhw43KrvrLbDdK1fZBPTX
 l.TymdVLRjcke69.K0NKW7DSRDFagraqp8N6Sy0kzRs3PDRLF8fwsfNQPneyDxoYFB4jt9urm_xt
 Ey.KB7uuZMiOkDonA8xW8vIf8AYIImahHZHNdCd.V956o.gs0dXvs59lMsd..VTiJmIoxkULYz0i
 RxsulTXiYUQZw_hSmjDSf5meKYNNEfJtGmZT1rYJiwj1UW_o6V6NkdzhhQ6MRVpPte8XGyZe10I7
 ViNJs4O.uHOcuLLQOYYosl.kM5fr02JINy8vTtA_6PIQl75qhycSC4i5MNaeHgQJEO4NtfVQ0ZJB
 klLgBRvBzY8QyDsIOxqOO682PywThqGGEvW9BgX41K3CdOBJc9DWcbqAOYQDx279p1nCsEE72KgQ
 28lUkT.5ceaPNpRqRMQMuJ4LOIW8gd8BkcG9b8kf0H9Qr1qZolF__6POk8Cb66NRTgWIRqHuS5oT
 0QAw.69IaNOMmgcsISleK1Y5jCBVn3gjXpmac_ApOl0k-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic313.consmr.mail.ne1.yahoo.com with HTTP; Sat, 5 Sep 2020 23:21:35 +0000
Date: Sat, 5 Sep 2020 23:21:34 +0000 (UTC)
From: anitadominic50@yahoo.com
Message-ID: <1384294196.650098.1599348094987@mail.yahoo.com>
Subject: hi
MIME-Version: 1.0
References: <1384294196.650098.1599348094987.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16565 YMailNodin Mozilla/5.0 (Windows NT 6.1;
 WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.0.1611
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
Reply-To: augstinemichelle00@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>




Hello, Can we be friends? If you don't mind
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
