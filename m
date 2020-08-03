Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9B823A84D
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Aug 2020 16:22:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C37912041B;
	Mon,  3 Aug 2020 14:22:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y+n9MVa7pOxL; Mon,  3 Aug 2020 14:22:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 658F82012D;
	Mon,  3 Aug 2020 14:22:16 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA8991BF3AD
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Aug 2020 14:22:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D4AD6866A3
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Aug 2020 14:22:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ue+ynWTue2rm
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Aug 2020 14:22:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic303-21.consmr.mail.ne1.yahoo.com
 (sonic303-21.consmr.mail.ne1.yahoo.com [66.163.188.147])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 45FFF8669E
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Aug 2020 14:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1596464530; bh=V09D8a1N75lUFkJxVR9aVpVPFU2IfPbM8afoyzXI9EQ=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=KlgqMrEjkTBdS72/kLTv8Wgz5k+JWEjIcRN/j072JD/V/5GNlSUfy9FKq7Os55r/q69PtkdXJN6AYM74B527pcKniwYOArP9wNpzBcumqDEnCilnhBpbStwYR+lk7SLR89xyEiFGDDO8YFClxlmjOd/0TJzeKmx5f8TwMbxGnf5bY/1jTe8RDxhIq9YpWtdVje3ndbSplsFmL5qLGCQiun1/wh3lF5sLIZfevwl6Ob4LQRvTYQr0crPInmCL8FDmW5Mw+y2menAebUOJxfBtjAZASOqWU+MLpRfcvcd1tdhZdY4RpltLFvlvgfRiETdZr6vb3xIQ4GBAOKWy8yk3WQ==
X-YMail-OSG: W4ZLAdoVM1nqfru3PnTOv980Cql_r2YKhTI.oL9Tz2VJBRdu5CHfTV_Y5QLxX4.
 ABEXnguMv9lQAkBxA5qGsvJxWHR8cF39v5XZKEycaIF_EBBqpeFGmljpH6L00xeiegi6m7O1QuOg
 N1b34CkeDzVR1Jd1Uh8pEPpTISUhMzob40nn7efjTX_p27xPslTygaWLeFdWUPTEFcTjvOYVWNc8
 lKgM8EFnYQqgcgx5SAlNXeVxqH8.ymZuN8CqNZ0DMObOz92JO8rUsl80QamQwrSv9uPUFI.sTLcJ
 GF3jhhkOjtPEjGv9CQoMPqfLpGPeTT_w1pwmYxUEPHf9mqt0SVf.BIUApood_afzkl3ZIrk6o3Hx
 G5ZwkloG7zl1atgCbovQ7_AJMugtkVmes._tyvGfnO1hEihSuqFESlJqawZqQ3QKcNadAZBz4DXu
 C.VOWXVivcfsB2AU8oEyvjARVRKVPLI9lBNBZ8evPOZh5XR1ewBaUV46edh0aH4dJ1LXDPwRjWMK
 yGlG1if5xL_KpRhcHT.EypW6otTbUVxEGAbKrohTc3QTyzd9bpOYlfxvsEGYIO8RDwTr9S86BqIE
 yXGx9A6LjAT9BRZNO5QrBy9eoV7hx_ajfAocPgsZzMy17J3zkR8dmhtTIQobQXfK0cah_OIOBNg1
 L5Qk7Z_WHl7Sin52O0gLMhpXIsNjen1HKwmFCTCnDyCk92D3TN3gowJJeWbnXfz6jq4ajlAgck.q
 RplVPwNsSyX7B49bEH5OvYRW6nJ1rolzZO4Z96EmLtJVdjtt14.ATR488.epNTIx66rfswfdK9hy
 xtt3XuPSZcCWCu2YE91.QqMlmgr_TyWZtTBB8nK7EcNdZRymvRFgZk2cdkbHkWl_RH0P2J2ZrCuS
 kA.NKJHdpjyDcP2J8ra1.PUQCOESRrcTP_UNvTQOng2R_QB2EE1tkEi9Fw4yjpLbwQXW7qiiLwWC
 8chd1_qDi5Rwf1KhI6SGrUDu4PEEUAQ2CALazlSm._dYv2fyEUtojee7IpsZKKH3PZrZhbskZme3
 .2TSDAldH5xlIITqeIHwmOsB1AbB4kyODA3Q_gdgC4meYXccUp1lWx7sWuEcofgd5eLF7.Yxb5bY
 PrJsAoHJZCka8RXyuSdEoj27k09txmRsRqt.UHqId7o.L6nJpKrOYsY7kLAh5N1Pqu_bmExMXq5M
 4jj1rPRUg412hS3u.cTxvgAp.KTzednb56sM.sqQq9ytzMDsjSir4XyEKJY9MgiGUDyWRZh7DZUM
 q21r_YUrH8oBHdrkVnJlbgKqR_yUbVlMSKAXBpg--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic303.consmr.mail.ne1.yahoo.com with HTTP; Mon, 3 Aug 2020 14:22:10 +0000
Date: Mon, 3 Aug 2020 14:22:08 +0000 (UTC)
From: Ahmed <mrahmedoue@gmail.com>
Message-ID: <1906637801.11159997.1596464528098@mail.yahoo.com>
Subject: HELLO.
MIME-Version: 1.0
References: <1906637801.11159997.1596464528098.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16271 YMailNodin Mozilla/5.0 (Windows NT 6.1;
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
Reply-To: ouedraogoahmed@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Dear Friend,

I know that this mail will come to you as a surprise as we have never met before, but need not to worry as I am contacting you independently of my investigation and no one is informed of this communication. I need your urgent assistance in transferring the sum of $11.3million immediately to your private account.The money has been here in our Bank lying dormant for years now without anybody coming for the claim of it.

I want to release the money to you as the relative to our deceased customer (the account owner) who died a long with his supposed Next Of Kin since 16th October 2005. The Banking laws here does not allow such money to stay more than 15 years, because the money will be recalled to the Bank treasury account as unclaimed fund.

By indicating your interest I will send you the full details on how the business will be executed.

Please respond urgently and delete if you are not interested.

Best Regards,
Ahmed Ouedraogo.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
