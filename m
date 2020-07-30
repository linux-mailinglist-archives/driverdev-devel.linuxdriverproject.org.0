Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A473D23334E
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jul 2020 15:46:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B40CF87938;
	Thu, 30 Jul 2020 13:46:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jd78NL1gWtEf; Thu, 30 Jul 2020 13:46:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6B5AB862C7;
	Thu, 30 Jul 2020 13:46:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 360341BF47D
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 13:46:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2DF22873CE
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 13:46:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NXU2udkWlP+j for <devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 13:46:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic305-21.consmr.mail.ne1.yahoo.com
 (sonic305-21.consmr.mail.ne1.yahoo.com [66.163.185.147])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 148D387020
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 13:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1596116793; bh=UTdeZtwcLAAshuqRinb4IC3V1yzEDH+OJIg1EC78vr4=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=GotAfO1wNsVNuAnOhF6BMDi55/FGZtxlJaxfnzzZgu8NZl2/Zr0cK1zQGnn8LuDykox15fePRWneTkFrIweUuI6sRDwQQkf7jL0JOaKXPcGf0zRBkluIuJ7Rm8jlb2mT4ZIl5veomL7v1d26yI5vwTOrl7Jrf5chyYgMDTCiRRyDU6LOlaEzDXbJURb+zlVJV7zI9xN7846oqU0kPJN8vIVaR6hlTuXmaABAG0qtGmufKyzcHnIj8e61BffAB/NMVac3Z2NglV+ZorQ5Y2GLDvn98I6EKRsFzPa4Vq0wfLyQW1OKwRGrQcv49kxhWW82jK5RJByQzSxYZoJ1v301TQ==
X-YMail-OSG: j.cuiCkVM1lcZ_C63ywnYlaRx6FrDc5zL2es.4gl0kkNZTQK1.rzUrnNVXAqgYl
 cmsft2OYqD2tXbOyGc6mCVWnNEQLBs5OUfIitRiQrzXUoBQiTLZcEFJTDJaSOldca9VzkkXnMXNf
 BW.LW69yYFRu85lq6_6mnDrCgvp5rwv6_Uebdjhgx3fScM2W2BctdTpTSbIXI8WUx3vxTia1exCZ
 UMkHz._kykgrVBCT4baLTT50Ddx04miLd07.biONlZRhKEcUwInOU1GDj47FTDWKAdngOOo4zRzB
 qG0omy.x55B0StPF_jY__dIyudltGuz2rgeCUwxTskkfN7mzkG87dq1PsuBl6wUkJPRkE0dSLFzx
 y5eMFxLMPNoft_QG.5l62ppeCB7UlCkGs0bYCBcKbl9dDeKT2hxQpEKZ_pGg7iemEQWNQaI1xe4J
 EyyF5TjuL6j6rIfyXDaXiE4.tt8C2x4I.hjUR5572JL9Miia4QsjghHkPF0vQa3CDYFAtMLKTHh3
 Z20ZoypTqgRQvShCXdI8AsdLPoASUPQVYLuEvFkGCkuwX9kUuNgm9K81tgPUIYczGkl0cu3EG0hU
 LWhlXcsgzU_OIRa9uFue1y_IqSsMmvlKx8uPInyEsE2TWZ8JPBBSjvWUkcpXXWO6lu_vWps.gYUB
 1lVcssi3aSrC1..pOylCk65U4xbbOcihEFpyrWtiIAtiFCzaQvpT1tLUWC3HgNE3eDIu8BxoHhr9
 htNeNX9E3FTdDCp17C8a3TFNiZaXvDAAqtswo8jHjZ2S3io9DH2SZOLEFkaIoyRieNzbq0Y29bsc
 7pLDQiVRbFElbIHXxm.9a.S7JP4Ifqd6tFCXAQyW6WdQstgZe8shWl6EyEspPcY7uXgXHqLWrSw5
 66XbsFq9kY20bV0CSVN1Wbrh.sg7dY2xBf4YLgjF.v2UHnercFw._7FCV38XMSauFI8Z4UOOVYPF
 27s.b4X1vU33s.yuTfKYw8q.LscbNo2YIEy9_n7eKtqO5T3HjK4WK4XleLGQiLF.7V.feoqhcwx4
 HzFGyxq7HkUT.A_snmOIkkRS9E.ATk0617utHE1kjZxgyznHkO1he5LZkAblscNlJTUEq_7YIi7k
 Db6SyXiN6zXqub1mqrwUeJDSKmJuzJzYq7Lf_TixQ6mU17MNedfCE.BjQiNLBFlTZ1hUTqFwBTcJ
 najKJPIJlpyKJ8EwXhRPg37fwC9YKYJUTtyjZqltpys5qskY8lRjvoCQFoBs7jqBXzp9StklWlr2
 5_m4mA9ZybhbLDgWkb2mtS1d.kxoIW_vTQVGgoyReWA--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic305.consmr.mail.ne1.yahoo.com with HTTP; Thu, 30 Jul 2020 13:46:33 +0000
Date: Thu, 30 Jul 2020 13:46:29 +0000 (UTC)
From: lina williams <williams.lina265854@yahoo.com>
Message-ID: <19673914.9506414.1596116789092@mail.yahoo.com>
Subject: MY LOVE,
MIME-Version: 1.0
References: <19673914.9506414.1596116789092.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16271 YMailNodin Mozilla/5.0 (Windows NT 6.1;
 rv:78.0) Gecko/20100101 Firefox/78.0
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
Reply-To: linawilliams684@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



MY LOVE,
My name is Lina Williams There is my email ( linawilliams684@yahoo.com
 ) I pick
interest on you. I will like to establish
with you. I will introduce myself better and send
you my picture as soon as I receive your reply.

I am looking to read from you as soon as possible.
Thanks.lL

LINA WILLIAMS
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
