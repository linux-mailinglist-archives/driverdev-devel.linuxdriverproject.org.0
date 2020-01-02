Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1B012E8B1
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jan 2020 17:30:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 13F8687A34;
	Thu,  2 Jan 2020 16:30:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DKIyS5kvkNd2; Thu,  2 Jan 2020 16:30:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3F79187986;
	Thu,  2 Jan 2020 16:30:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B35FE1BF593
 for <devel@linuxdriverproject.org>; Thu,  2 Jan 2020 16:30:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A9889864A0
 for <devel@linuxdriverproject.org>; Thu,  2 Jan 2020 16:30:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 32Eps8hXvJkz for <devel@linuxdriverproject.org>;
 Thu,  2 Jan 2020 16:30:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com
 [209.85.166.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3824A864D2
 for <devel@driverdev.osuosl.org>; Thu,  2 Jan 2020 16:30:40 +0000 (UTC)
Received: by mail-il1-f194.google.com with SMTP id b15so34508585iln.3
 for <devel@driverdev.osuosl.org>; Thu, 02 Jan 2020 08:30:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=mTdWJKn7dhTRmaSKDBtLyKhsLu/LRMgalAUdZ3CVkO0=;
 b=N3UISJxuO/7FxaCoicX6230NMqrn+LxlWds/3KX/+I9Mg04wnJFG8eMM4uutIE1HSs
 FIAZIk3t6BNS9ubC0XUR/U4oLeAB77ujrHQidHtRoDC4HT/wGWQQGacI9o4SdPfSFM2e
 cqfmR0ybk9Gckx7hn74vLMjD3Q+wYcD5xRFSzfw6B6qsWfNFm9DrctPABakDlPxzUgYt
 mnBfwJsNtMN1RDtifKsJiFzxqb/3C0+WJjJBnMfkRraJ8uFO8MCwFU8ly/8zc9FgVONg
 sWYWXr8fiY5G4EZRs5BfQRLe5kiq3gxcO/nL3W4ZUgC5vgOFCLQPtaS9NvgNP6xYtQow
 Cb+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=mTdWJKn7dhTRmaSKDBtLyKhsLu/LRMgalAUdZ3CVkO0=;
 b=eieuhBSiAYVL4xqv+BN1oIEEFu8QyJ8zxmnMFCwFDD2Qh2U76I2UMxcjg21fZ38qFv
 wkZEP1o2Y1XZsVgdH7j2wD5AeePifAqE///MpOk+dCWWFr6JexzkIES1QKLiRh86cze/
 VZI7y1q3D0qwn5LJnjzrfi/ZZzqYfTxxGvkxnd1YkDpsDIEOW9v45xwR1gUOKeuoHJ2h
 WSNskl+dvl8sUITllzDLXh3QzNz16sQffovcA539RBzq/1Mh1gdjxK66bx4UN+PSA6bE
 Ev7maqG1SgQUcTYdl68PhPl2/JBukpwtcDSLRMfcHK7oUsxaYewmGQ1Qo4Yy9z7/8kNd
 tByg==
X-Gm-Message-State: APjAAAU40/f07iDTPpjkNct24cNDqEGuMln0RUdLe6toGlMbIaDFTZDR
 Vgn+hit7Q3HQ7CdBt00is5A3S7GmF5iMFP0RW+VxHgJhBpk=
X-Google-Smtp-Source: APXvYqwQqDUhEgV8r0pCVIwLT//Vr8JIij8/8y2kShyrRb2/qGhxsk1HoUlOjiRVDbLCoHhDgWmSrVHxgyTUNN9/CQw=
X-Received: by 2002:a92:5cda:: with SMTP id d87mr74014757ilg.100.1577982639538; 
 Thu, 02 Jan 2020 08:30:39 -0800 (PST)
MIME-Version: 1.0
From: Marcelo Diop-Gonzalez <marcelo827@gmail.com>
Date: Thu, 2 Jan 2020 11:30:29 -0500
Message-ID: <CA+saATVfYLH4Ej7t78_hvd_cvgeS_=sV56Ad4Qbq1SsYPnu4rw@mail.gmail.com>
Subject: [resend with no HTML] minor bug report in staging/vc04_services/
To: nsaenzjulienne@suse.de, gregkh@linuxfoundation.org
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi, I noticed couple minor bugs while looking around in
drivers/staging/vc04_services/*:

1. When opening "/dev/vchiq", vchiq_debugfs_add_instance() adds a debugfs
directory named after the tgid of the process who opened the file. But
there are collisions if you try opening it multiple times from the same
process.

2. In vchiq_dump_platform_instances(), called from vchiq_read(), each
instance's ->mark member is used to track whether it's been printed
already, but two concurrent readers could stomp on each other (causing one
of them to see fewer instances than actually exist), since a field in the
vchiq_instance struct itself is being modified with no
locking/synchronization

I didn't want to send any patches out since I'm not sure if/how people
would want to fix these, but thought I'd point them out.

Thanks,

-Marcelo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
