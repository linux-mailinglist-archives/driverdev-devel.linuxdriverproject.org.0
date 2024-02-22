Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8798606E4
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Feb 2024 00:27:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0A81541A41;
	Thu, 22 Feb 2024 23:27:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UBFhDOByW1SI; Thu, 22 Feb 2024 23:27:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 04FE3419F1
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 04FE3419F1;
	Thu, 22 Feb 2024 23:27:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 981E91BF424
 for <devel@linuxdriverproject.org>; Thu, 22 Feb 2024 23:27:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9332D608B3
 for <devel@linuxdriverproject.org>; Thu, 22 Feb 2024 23:27:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HQOo1H4ujC_Z for <devel@linuxdriverproject.org>;
 Thu, 22 Feb 2024 23:27:05 +0000 (UTC)
X-Greylist: delayed 4300 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 22 Feb 2024 23:27:04 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EE4A1608A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE4A1608A2
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=92.48.89.108;
 helo=host.jugbujuma.biz; envelope-from=terrymokone067@jugbujuma.biz;
 receiver=<UNKNOWN> 
Received: from host.jugbujuma.biz (jugbujuma.biz [92.48.89.108])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE4A1608A2
 for <devel@driverdev.osuosl.org>; Thu, 22 Feb 2024 23:27:04 +0000 (UTC)
Received: from jugbujuma.biz
 (ec2-16-171-162-208.eu-north-1.compute.amazonaws.com [16.171.162.208])
 by host.jugbujuma.biz (Postfix) with ESMTPA id CD2D81F10EB
 for <devel@driverdev.osuosl.org>; Thu, 22 Feb 2024 12:30:10 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.11.0 host.jugbujuma.biz CD2D81F10EB
DKIM-Filter: OpenDKIM Filter v2.11.0 host.jugbujuma.biz CD2D81F10EB
From: T M <terrymokone067@jugbujuma.biz>
To: devel@driverdev.osuosl.org
Subject: Get Back To Me
Date: 22 Feb 2024 17:30:10 +0000
Message-ID: <20240222173010.30E5E3D36D4D63DD@jugbujuma.biz>
Mime-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jugbujuma.biz; s=default; t=1708623011;
 bh=Nx0nls+kgkNYPor0C/mMcBlQFpBaKV90LE8yqkKwt2c=;
 h=Reply-To:From:To:Subject:Date:From;
 b=M8MIgKNHSG9pnU9pgWNtjZCiKuOwLW1QUhBEcBAJBCe/le25kmQpiqz5TrCyfcrje
 bbJvAcxV4cgoZNLLI5gj3FwsxiTt7X7nA2NO05x2VYvcjd7eOcrXOfdYOHlGeI+ZOy
 CvTI47vlNmHwHrQOa8rUeEeaGDszHnZiw/0BOAQk=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jugbujuma.biz; s=default; t=1708623011;
 bh=Nx0nls+kgkNYPor0C/mMcBlQFpBaKV90LE8yqkKwt2c=;
 h=Reply-To:From:To:Subject:Date:From;
 b=M8MIgKNHSG9pnU9pgWNtjZCiKuOwLW1QUhBEcBAJBCe/le25kmQpiqz5TrCyfcrje
 bbJvAcxV4cgoZNLLI5gj3FwsxiTt7X7nA2NO05x2VYvcjd7eOcrXOfdYOHlGeI+ZOy
 CvTI47vlNmHwHrQOa8rUeEeaGDszHnZiw/0BOAQk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=jugbujuma.biz
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=jugbujuma.biz header.i=@jugbujuma.biz
 header.a=rsa-sha256 header.s=default header.b=M8MIgKNH; 
 dkim=pass (1024-bit key) header.d=jugbujuma.biz header.i=@jugbujuma.biz
 header.a=rsa-sha256 header.s=default header.b=M8MIgKNH
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
Reply-To: terrymokone067@domanimailersa.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello there, My name is Terrence Mokone but you can just call me 
Terry. I am representing the interest of a certain high networth 
worth politician. We are looking for partners overseas that can 
manage high-value funds for a period of 5-10 years. The funds 
have been accrued by the influence of the power of my 
benefactor's office. He wants this to be done confidentially 
hence I will be acting as his eyes and ears during the course of 
this transaction.

Please do contact me if you are interested and I will explain the 
business to you in detail for you to better understand the 
transaction, I can assure you that this will be of mutual benefit 
to all and will be executed in a legal manner. You can respond to 
me on this email and I will send you a detailed explanation. 
Also, provide your whatsapp or mobile number if you have one for 
easier communication.

Yours truely,

Terry.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
