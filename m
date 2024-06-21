Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 543F6911CEE
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2024 09:35:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C7E6F811CA;
	Fri, 21 Jun 2024 07:35:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YvpTgc6Z0Sdq; Fri, 21 Jun 2024 07:35:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 17C95811AE
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17C95811AE;
	Fri, 21 Jun 2024 07:35:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8EBCA1BF348
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2024 07:35:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7B61E42F6C
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2024 07:35:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ynOuTImsxolt for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2024 07:35:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=91.134.88.143;
 helo=mail.provomint.com; envelope-from=phil.westbrook@provomint.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 50DC742F6B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50DC742F6B
Received: from mail.provomint.com (mail.provomint.com [91.134.88.143])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 50DC742F6B
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2024 07:35:31 +0000 (UTC)
Received: by mail.provomint.com (Postfix, from userid 1002)
 id BF30C2292F; Fri, 21 Jun 2024 09:35:24 +0200 (CEST)
Received: by mail.provomint.com for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2024 07:35:21 GMT
Message-ID: <20240621084500-0.1.3r.3hkt.0.kc5nba5s3n@provomint.com>
Date: Fri, 21 Jun 2024 07:35:21 GMT
From: "Phil Westbrook" <phil.westbrook@provomint.com>
To: <devel@linuxdriverproject.org>
Subject: Smartphone Delivery 
X-Mailer: mail.provomint.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=provomint.com; s=mail; t=1718955328;
 bh=z8YfBTsfFVR86SysdkbYFij9KKuqCN28Op4KOoP5Hxk=;
 h=Date:From:To:Subject:From;
 b=l4towoObwBPXOXW2kImVFQM2s0wNVmB5jiwVVKHRqXcMKDi2SmblvLJkpc0ivCGNV
 czQ5ic3Xk4Pdtt9WPa6lS3WAo0mQeGoihhZ/QRYBQX2s+GSOgU2q8eZiIbGM7BXlDL
 MKKqMf0ndEO/rDszGW9AyVMc2FEwJg6TDwvOsq6uKm/S1lTx1lQIZgLA0REFz4aA07
 VErr5S+slf/Web1pbe3bCurJMSJ8AWiHGyLYUFZWNh2qjo5HUDHokX19eprUQJpQGh
 Hkk4bE5AxjR464b9185CwrNvORyZAKorUx6DU/MalRVPXByca9bw9UUW2DZ5D+nQiI
 FkpXs9FlknoRA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=provomint.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=provomint.com header.i=@provomint.com
 header.a=rsa-sha256 header.s=mail header.b=l4towoOb
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

We are a leading consumer electronics supplier to stores and wholesalers in Europe.

We offer smartphones of all brands, both new and refurbished, which can boost your sales.

We provide attractive wholesale prices, enabling you to achieve satisfactory margins. We have delivered 625,000 products to our Partners in 11 countries worldwide.

Would you like to see what we can offer?


Best regards
Phil Westbrook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
