Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3B814D8AE
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jan 2020 11:11:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 61A05877EA;
	Thu, 30 Jan 2020 10:11:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FHpJQB7yBOnv; Thu, 30 Jan 2020 10:11:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1119887745;
	Thu, 30 Jan 2020 10:11:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E1B51BF3EF
 for <devel@linuxdriverproject.org>; Thu, 30 Jan 2020 10:11:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1ACCE881E2
 for <devel@linuxdriverproject.org>; Thu, 30 Jan 2020 10:11:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gRKiHES-HQtD for <devel@linuxdriverproject.org>;
 Thu, 30 Jan 2020 10:11:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
 [209.85.210.179])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6939D8571C
 for <devel@driverdev.osuosl.org>; Thu, 30 Jan 2020 10:11:41 +0000 (UTC)
Received: by mail-pf1-f179.google.com with SMTP id 4so1237012pfz.9
 for <devel@driverdev.osuosl.org>; Thu, 30 Jan 2020 02:11:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=mz6Sg+1xlyo1RAumtR2m9UZfDaDkaYdFhbdbNKvWKs4=;
 b=HkOH7nZqbOyGwH1fu0ppaau8VwYWH0iMaAnnXrxYZPHWSes9zL4AVH4XpB9eO3PfQu
 If7eVjiU18TtgXymv1vpr02ZZBsZVv7x0VOLx3mDChU+bWjwMOGHtGWLpaSr22mBhTNl
 eqLWe4lJyL0z34vCcZTl7t0EFwsjvvRKic7DEYD4zHeYy3Jkmgv/DTW9xC0tbz6rTpuQ
 pJJTe5v5WP52nOPqs6XfOPsQzEV8uByt6ZaIwNPWvZNvG5nhr+wg5zX0W3qALk+10v7I
 nc16WMlE25YLLzE0JfcKyOBoA3pZk4wFAaROMMxAGBGgJy0DqC/f+UmsA9Uaf0KIhn7g
 FJAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=mz6Sg+1xlyo1RAumtR2m9UZfDaDkaYdFhbdbNKvWKs4=;
 b=SmTjm/k1tUeF7uFwhks6twd6UjBSIEIaxorGRPNGF/VwTED/rZwmQMV2xCoqi7999J
 tIrkq8rP3hutb1DI03E1TW4YNC32J/+aYGcMJCnp4JKVEt4bExv9cZyluI5T0944Ts8z
 4G75os3bqcANp6jsVSp+JI4z6qaSnKsd7tStmnjlyIPqZd324d6QGeLtujTrc4pop11a
 ECWSXIq5W7nFVqGC7kH2wnMKqWDUvHQ7+x7vjmgEeB5B7jl0FCAGfVXnkWzSTicAFW8n
 d72speYqJhrAVHJebHnTfIFrGHRfAGhZeELqv+qnPzDAYUNVgYnJDqb6WKRX8cu8ntkI
 iMpg==
X-Gm-Message-State: APjAAAWBR1zdFsy23HWG+Ox14RMQ++5A8iX1GKdkKOgsnuH1NqGNQ4BD
 yOK3dq2sWdKHPsuqlxu4tko=
X-Google-Smtp-Source: APXvYqxryqEa+v+/LI4WvWVdSwoiDVrYKw2NS71V1082sPc/hxKYLdwKiBOeldsH7+QUoiR81NFJAA==
X-Received: by 2002:a63:214e:: with SMTP id s14mr3857659pgm.428.1580379100984; 
 Thu, 30 Jan 2020 02:11:40 -0800 (PST)
Received: from localhost.localdomain ([2405:204:848d:d4b5:49ce:a9e3:28b5:cf94])
 by smtp.gmail.com with ESMTPSA id k21sm6239683pfa.63.2020.01.30.02.11.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Jan 2020 02:11:40 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: valdis.kletnieks@vt.edu,
	gregkh@linuxfoundation.org
Subject: [PATCH 0/2] Remove unused structures from source
Date: Thu, 30 Jan 2020 15:41:16 +0530
Message-Id: <20200130101118.15936-1-pragat.pandya@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org, linux-fsdevel@vger.kernel.org,
 linux-kernel-mentees@lists.linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset removes following two unused structures from the source as
they are not referenced in any other file(s).
 -structure "part_info_t"
 -structure "dev_info_t"


Pragat Pandya (2):
  staging: exfat: Remove unused struct 'part_info_t'
  staging: exfat: Remove unused struct 'dev_info_t'

 drivers/staging/exfat/exfat.h | 10 ----------
 1 file changed, 10 deletions(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
