Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FBE270BCF
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Sep 2020 10:22:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ACFFC878E6;
	Sat, 19 Sep 2020 08:22:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YHnIADnp6QXI; Sat, 19 Sep 2020 08:22:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8805E86A83;
	Sat, 19 Sep 2020 08:22:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D7F21BF576
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 08:22:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1E6CE87377
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 08:22:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id csNUu4Ops8Ti for <devel@linuxdriverproject.org>;
 Sat, 19 Sep 2020 08:22:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic311-23.consmr.mail.ne1.yahoo.com
 (sonic311-23.consmr.mail.ne1.yahoo.com [66.163.188.204])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A90BA87371
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 08:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1600503745; bh=4WdSEemleHyGNl93YioI7WQZ1UqBt7RDy9RPEp9v/e8=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=q733xSyZSY8AUdyvwWcFYZJTUX1LVFfP1myRLFaTD2vwSA9zPDIG2mf71LvIPNgnqia8uJLr9jOcwXsT3UaN+anJbndktQvrrhzHi3Wp7l+6PGRaxXMLEVd4ucc3lYjRZgyAccstBD8qMhmawlAYHwW8TLMzcrXJW/y2T73a+ZQZ2bK/e9C0yRKhWcAqPxnHJ7/sKsKMTDvGW98WoKWVZaBwzTyNX7u2RRfmETvSqB/EV5d4HbViimJAqnS5jKC6abj761xKN6t+6gBLwRGneLFTb1UpQCad7rfWAFZ52DJD57KrCYg+mtWxVRY/rMuGN+yMrOctxj2yiB0jMtL19Q==
X-YMail-OSG: Urr9sdkVM1nDZLqA9lMLRxNC963N_CbJsZNCBSizCKfLZKaibLGcX5mQulReXzB
 iP5TiOUBAR_3AuWEXcdXXNP9nIVrzi4m8t7uaPc2uE26zyuZh.9yOsWcJL8NkTxZGStr5EvhYV5c
 Epgv788dJK01XFM6QP9tuK8.iz3J1RwBkKQWEniQsxms7NZTB2RZu4bJkn9CfCFRIVNpD4_io8R4
 T3AE.kGi0GaCJRokWYgmYjx6Mr7M.lR_sLtk5P5DQQpCknm5HySumQqenXdw8MtZ4OalF_uGAZSI
 yp0eTjb2Xo3c.AKYTDUqQYaQxrAIJhz3sQO2grST91WB7i2P7g9tCLM7Y8g5e51spxxqTwItq6yj
 Y0NzCUsvfq8bzgDSjsVu2J.dsVBICS_L6AmEKK5R4ZVf2iJzWX8IrhNKYu7CyH44t6zVCu6XoW2G
 xVoD8UcT_DxdS1lfnOC0yxqCJKWz_q8IDVfiCmT8NvKyZSL2yj1gSYfMbyxPQKy9IGKUmf7rioXM
 1Mr1H9RUru0PVmf6zu6tG8fn_.v5A7yF1h2gjdDO60iOiqxgLKeqEO9wzfKngjkiIbkNKb8aeT0H
 5b_8E4F9rOD0.pRa56OWgqtnzh0OiXVUMDfmq13oYddT1YmGqJy8yNaSkLjTdkqMCZswA4AoUXik
 caCDV6wPcpvBltwg5A5LTOndYNbav8bTRPJdvGqchDy9L2Q_rCn2hvAQCEvxm3_LD9VKngCuKXby
 SSXlP017hRADYaOdxUlba5ZQtASaS0V5t4jLAE.uI0jN5ZguecSvtaKaYL7E_J1RO1MOTw29F1S0
 JaWW.vnqyetRrtToeCg9WFSeFZpsXiLTkAHrPgE4b0LWADlGuADBqpgMa4iVjWx2QfwEM8HTNOR7
 TH40KscKM4n9_ztW0H0MVR.K0WxmPBMqUSWilG8ZG3G8C4kOE17fFTOSq7BffVNcfL_8oZC4jASd
 UZS_YBMds.j8weFUY4FdCgmQsWbDobnI4SgxaAKevWUny5LOH.w37KIb0OHfkxcPaIGGw_RouLPy
 Q_ouF3eKXqkgZhptwFY1ILq.OACbzX8it3ClYqHZ4WGFUKYpKAQ5hggM5oArfVSImNgyLSpmiO2I
 ue4xgnZWssiEj4_v9beNZXhpc7qOTRS4K9BBnbPrHBWWIyBIoqHHBQk4j3r97cVN_CyiZQE0Cb6u
 IM7oqGAGdq0HNskQ5V0Al6c7MDCHBO8b2GBeN69E6VpDZIx9S41pDVGx1uZyrnQ5JPfBzqdkjhXV
 uzWU5j1qfg4Hmvv1c3XHL78qJJxM6GNDPupkz2ZXA7S_nCx3VLKAjHOyUJa7j_vSjel65tkyp43L
 teBCbeK9KZvHAzF4wWAChDfh5Z84jt4NargzmuSrjHlZYQ3O7j6iPgGiFgW3YHZ9Y8Y3YH62W37d
 p5AHFWlMpq9398NcOQP_21rGrU4AEZvmB6vAiVQu9VZpdds.22uNXJU76ZwVWqXgmaqqH3vU-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic311.consmr.mail.ne1.yahoo.com with HTTP; Sat, 19 Sep 2020 08:22:25 +0000
Date: Sat, 19 Sep 2020 08:22:22 +0000 (UTC)
From: Lily Lyman <huttdominique@yahoo.com>
Message-ID: <1377590503.4167854.1600503742874@mail.yahoo.com>
Subject: Offer for humanitarian work in your country
MIME-Version: 1.0
References: <1377590503.4167854.1600503742874.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16583 YMailNodin Mozilla/5.0 (Windows NT 6.3; Win64;
 x64; rv:81.0) Gecko/20100101 Firefox/81.0
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
Reply-To: lily.lyman@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



HELLO,Offer for humanitarian work in your country
My name is Mrs. Lily Lyman from America, I read about you from a reliable web site and i will love to employ you into a humanitarian work in your country, Please reply with your private email address so that i will give you further details and tell you about myself.

Yours Sincerely
Mrs. Lilly
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
