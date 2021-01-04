Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B44F2E94F6
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Jan 2021 13:37:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A34A85F93;
	Mon,  4 Jan 2021 12:37:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gnTbyujbXZkN; Mon,  4 Jan 2021 12:37:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DDED385F2D;
	Mon,  4 Jan 2021 12:37:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F3E9A1BF355
 for <devel@linuxdriverproject.org>; Mon,  4 Jan 2021 12:37:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ED90885F74
 for <devel@linuxdriverproject.org>; Mon,  4 Jan 2021 12:37:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dPZacO1_RzwS for <devel@linuxdriverproject.org>;
 Mon,  4 Jan 2021 12:37:08 +0000 (UTC)
X-Greylist: delayed 00:20:28 by SQLgrey-1.7.6
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
 [209.85.218.49])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0677885F2D
 for <devel@driverdev.osuosl.org>; Mon,  4 Jan 2021 12:37:08 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id jx16so36536726ejb.10
 for <devel@driverdev.osuosl.org>; Mon, 04 Jan 2021 04:37:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NKzEXkRu9uc/1CbMh/oq34zAp/WkX7HSeewQ3vRITpI=;
 b=EUFpO9SOvDFpMJ5W7SyxF3MV5Sti2owhjuA+c1qJ3/oSG+msy1ir5fZDEEFbT5LR3J
 9YHWs5CyQLLCEU8UMzZy96RKapIRCryOOt3zrkmeyqsDzJJM3FlonigFVsVt8ulVCGOp
 TOuBkl/c1zoTvxRwgUwrufVhxdKpUhesnSLxc5a9N8zIRImcNtaH2/ozKB6Db6ny3IPg
 IWAPyKQggYYllbmHu+MUeZc7p/Nj9oG/uwq6Md0LG0BZCNQ+OxAV08TsIRGhwTEEBQxs
 91S7iJLMbXo7cDQeFZOw5UGTDoNzlW9VzAyddYwP3hkFBm+dQUvfNJvuY95VVMwWKWam
 3wDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NKzEXkRu9uc/1CbMh/oq34zAp/WkX7HSeewQ3vRITpI=;
 b=pJUeQn79SukbTC7Asibnx6d7UF+tuuqHPtMlI7wFj13/aTXbMQpyeuiXj5etT5A6Y1
 EbUBCwRQHkp/4m+13y1dIqs2RLiNlanSTZeF0TUlLCIef7bLDhczOH2RX9yBs1scbU9+
 dg5vUhholHVkv12HcwA2mEoJNrqzTx3f/cZ3je/iuryLP/iK1g2goNIgNJhSLXUbli2Y
 UrIJ4A5h0mu78v+9QefR0LtlpSZSIwAD9+tfYXVc4dyct/RLHfKko+gK1X5WmfkT7ZP6
 IIu0bVMEYI0VHeqs14HxqN5gtjw5xVtRPJQbllZAgw3LSthfl42BwnXSZCOiXDAAeC/Z
 x6TQ==
X-Gm-Message-State: AOAM530e5nTqdd9vXy1gfg9/0NWyd3CP/RZnT74QsI5Uf+eplcXkn995
 2ukCijeoC+zomaXZYbx52YllNH9P1JCHkQ==
X-Google-Smtp-Source: ABdhPJxbCJWslVNpxvqew/Yc279x2bH/jXeewgXMHbdVlRQ65xBHqKRyFc8JFm/eI0xs0cJDeBHrug==
X-Received: by 2002:adf:fb05:: with SMTP id c5mr78582449wrr.69.1609762190239; 
 Mon, 04 Jan 2021 04:09:50 -0800 (PST)
Received: from buildbot.pitowers.org ([2a00:1098:3142:14:ae1f:6bff:fedd:de54])
 by smtp.gmail.com with ESMTPSA id
 x66sm33692952wmg.26.2021.01.04.04.09.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Jan 2021 04:09:49 -0800 (PST)
From: Phil Elwell <phil@raspberrypi.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnd Bergmann <arnd@arndb.de>, Dan Carpenter <dan.carpenter@oracle.com>,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 0/2] A brace of vchiq bulk transfer fixes
Date: Mon,  4 Jan 2021 12:09:26 +0000
Message-Id: <20210104120929.294063-1-phil@raspberrypi.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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
Cc: Phil Elwell <phil@raspberrypi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The recent batch of vchiq improvements broke bulk transfers in two ways:

1. The userdata associated with a transfer was lost in the case that a
   non-blocking mode was used.

2. The 64-bit ioctl compatibility shim for a bulk transfer used the
   wrong ioctl command.

This patch set fixes both of those bugs.

Phil Elwell (2):
  staging: vchiq: Fix bulk userdata handling
  staging: vchiq: Fix bulk transfers on 64-bit builds

 .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c   | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
