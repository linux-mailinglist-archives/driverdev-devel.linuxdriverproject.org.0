Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1EFF2F51C3
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Jan 2021 19:15:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 498B98737B;
	Wed, 13 Jan 2021 18:15:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JJZ+ufVMJzDg; Wed, 13 Jan 2021 18:15:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C83F987361;
	Wed, 13 Jan 2021 18:15:32 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1E8A71BF33C
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 13 Jan 2021 18:15:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 16674204FB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 13 Jan 2021 18:15:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sMmN3a0WCXAV
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 13 Jan 2021 18:15:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 856692042B
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 13 Jan 2021 18:15:30 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id 143so3079486qke.10
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 13 Jan 2021 10:15:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=zkv0Q58PPvkSvJu6d30h6KYA2gvkC/VcWaVEKk6ruOk=;
 b=RhcPybeYJPS0bluJdpWE0YoZy5adLbukjZz1h5uja73ye1KrqGg4Z+xp29UW453cD6
 Ut1L2lD54oVo2dLIjD3nbW6nmkr+q44qR4y2v7YEGdcr+c/2l8RA/duY6idIOb4XJLHD
 pVOZzFDhlLPDK3VkPvm46eAJlMO0OM5u6F6dM4ZWpe0m6+c3HhggKkEct55fngmR9EOz
 yNpj191qT0XhpkWGyucZGG7aoHAPgFiNZ8K0DhOJscGePlk2s4ROAr9pk85DYMzUTW29
 Q/eHvZBD06SmP9C7/lwJyFAjtiQe+o4kY+jztpvNAYmaAEBZOfwhRpTIvYHWJJYMxl1L
 BFAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=zkv0Q58PPvkSvJu6d30h6KYA2gvkC/VcWaVEKk6ruOk=;
 b=PoHtp/qwYXoXQsm5dw2pUzoIjXfKMwvkSkf0KePHrK2qfNVKUENZqi3/7XMBuE4Iu7
 qbyIi0x1eooEmCrTePmuie3YPQNdDoZjRelGpE8fJHaJDxxRNmySnDx1L1j3AGAtNNGn
 BhKaxJY9MeYZHaF04Sa8OHBTnE2z28m15TBv00JS5IcIorcQ492fWkEnukv+Auqp19DA
 4TEHHFHDBCfAkTiFQ9u3Pt9wXNEOcnuG7dxNI8GOFYI6VDpl4mNHCi3HEkWk7MCGmG1a
 MgsP/4/Npd6V8tLF/8BR2cz6dGgEQAs2ytVrUEovo/rZF5rKrfhGgygh6eCFiw5bNC8r
 Xyeg==
X-Gm-Message-State: AOAM533MveyczreDKcYmgkBAxlVL/y86MSKiFmLqNZoL+NvimHqITblO
 XKoLDeXX7MA9ERuDTorWB1ALurSRyT1BnmAbdjk=
X-Google-Smtp-Source: ABdhPJxc9tbIWVP5Jpyi3+QcPgfqUtlgDDyKftFgLSJAWcQAlfPvxMsaZtkYKUDv0qINeov5yZ/p2MI6kjxFisM7AaA=
X-Received: by 2002:a25:ca97:: with SMTP id a145mr5140364ybg.221.1610561729530; 
 Wed, 13 Jan 2021 10:15:29 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7110:a38c:b029:31:3fb9:baa1 with HTTP; Wed, 13 Jan 2021
 10:15:29 -0800 (PST)
From: Jerry Kloubarly Ngessan <dw5234296@gmail.com>
Date: Wed, 13 Jan 2021 18:15:29 +0000
Message-ID: <CAO=Sjhb4eBzzfUiK37JPA_csYEztU9+8vpv8ETQM06xxw-kLdg@mail.gmail.com>
Subject: Mr.Jerry Kloubarly Ngessan
To: undisclosed-recipients:;
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
Reply-To: jerrykloubarlyngessan@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Please
I am Mr. Jerry Kloubarly Ngessan, I stopped at your email from our
international business directory in my research for a reliable person
to partner with, I have a business that will profit us both that I
want us to discuss. You can contact me for more details for convenient
business discussion if you are interested.
My email is   (jerrykloubarlyngessan@gmail.com)  I will be glad to
hear from you soon for more  details
Thanks for your time and waiting for your response
Mr.Jerry Kloubarly Ngessan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
