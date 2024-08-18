Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51868955F06
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2024 22:45:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9293740215;
	Sun, 18 Aug 2024 20:45:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8c3_jrXbwSxP; Sun, 18 Aug 2024 20:45:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82D6140228
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82D6140228;
	Sun, 18 Aug 2024 20:45:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6B8871BF27A
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2024 20:45:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5442F40215
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2024 20:45:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VeEMlBA1yglc for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2024 20:45:02 +0000 (UTC)
X-Greylist: delayed 21132 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 18 Aug 2024 20:45:02 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 67D7A40209
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 67D7A40209
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=181.205.108.99;
 helo=correo.viajesyviajes.com.co;
 envelope-from=seguridadlaboralvyv@viajesyviajes.com.co; receiver=<UNKNOWN> 
Received: from correo.viajesyviajes.com.co (viajesyviajes.com.co
 [181.205.108.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 67D7A40209
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2024 20:45:02 +0000 (UTC)
Received: from correo.viajesyviajes.com.co (localhost.localdomain [127.0.0.1])
 by correo.viajesyviajes.com.co (Postfix) with ESMTPS id 2DD751DC6A41; 
 Sun, 18 Aug 2024 06:50:15 -0500 (-05)
Received: from correo.viajesyviajes.com.co (localhost.localdomain [127.0.0.1])
 by correo.viajesyviajes.com.co (Postfix) with ESMTPS id 5FA6F1EA1FED; 
 Sun, 18 Aug 2024 06:15:57 -0500 (-05)
DKIM-Filter: OpenDKIM Filter v2.10.3 correo.viajesyviajes.com.co 5FA6F1EA1FED
Received: from [192.168.1.67] (unknown [196.170.39.237])
 by correo.viajesyviajes.com.co (Postfix) with ESMTPSA id 10D981EA1F81;
 Sun, 18 Aug 2024 06:15:43 -0500 (-05)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Re: Hello
To: Recipients <seguridadlaboralvyv@viajesyviajes.com.co>
From: "Stella Michael"<seguridadlaboralvyv@viajesyviajes.com.co>
Date: Sun, 18 Aug 2024 04:15:37 -0700
Message-Id: <20240818111544.10D981EA1F81@correo.viajesyviajes.com.co>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=viajesyviajes.com.co; s=2DFA2102-70F9-11E9-BA6C-810A5093251D;
 t=1723979757; bh=YosgnZWCEy/VE3si5OlZI2JrSHj3sYnZoTV6himmlSQ=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=0YmQGBadJhDHmTNff17xQ8VoXhxFVWImMhvTtRcKJ1s4rGhQHAdiC2RqcKgFsnSFb
 /8pjLANW6K7hN4n9tQaEK7fxa5VgN3zU1zziXVN4eFgDGjBr3jYPOqPflLC7tVQhPg
 VIW697JYgAOlW9lbvU1XuN4bvPAtrgt0dMU7NfsE=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=viajesyviajes.com.co
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=viajesyviajes.com.co header.i=@viajesyviajes.com.co
 header.a=rsa-sha256 header.s=2DFA2102-70F9-11E9-BA6C-810A5093251D
 header.b=0YmQGBad
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
Reply-To: annamakara001@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good day, I want you to confirm if you have received the message I sent to you previously.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
