Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 71627317303
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 23:14:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BB94786C82;
	Wed, 10 Feb 2021 22:14:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ckLfpneu-vbq; Wed, 10 Feb 2021 22:14:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D66E786B71;
	Wed, 10 Feb 2021 22:14:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E5FBA1BF3D7
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 22:14:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E25E98751B
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 22:14:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PJBRo9sbch9x for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 22:14:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
 [209.85.218.41])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 20E4187519
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 22:14:49 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id a9so6939342ejr.2
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 14:14:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TLQHZYiHAcfMtJij9bBMXiJV8bp7vLmKRqNCBw8+ijc=;
 b=CftyxJd0nXVsoqE3oViLeFHCTpBEQpvE37TwZ4oqafTgxDVd/JhRl0Vn5oIAVTGqpn
 rZ9JU4qVG68o13ozYG6Iz7KLEQpn1kV8JnCFP2FeQx3CXlRj7uEStWu/1pTOnYkMUW3v
 Og67ih/fSNfujPjwbczEsIPytMH/H+HVgDlEuAF803pTtgUifWV+rtJtJJ8UxJGjlkq6
 M9XUAFm26X1wisgDUcgY9g3N+MGWPDjDlPPXxgDxMsXso+Hyvr/XErFk3SvJeahixVXU
 q7N9F5otSddC2CMpV8zs50IXiDPCH3JbaY6zw3BN8y5wb8/H7HKcTJgGSS0Zj9zMXNNp
 elGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TLQHZYiHAcfMtJij9bBMXiJV8bp7vLmKRqNCBw8+ijc=;
 b=tMugUcRZ1RZlHOQJxIM+LZkDV+f2YfHZVRAL8erXtThQvyJVtD25Izb7+Bw4tjqdon
 9iGdE8kCh9Vv7Z30N0LZETsFuCzbo6mXy+jpuUhvw7LZ2x0ztm/iz3/xMWZWfS37mK88
 VgrjdpMSBd5pmh4iFlcZi2GQ1J2tRxnsWoKurrceA3W6/nLDPQzhnO4vJ3DPUSAiklv3
 EN7x/IaE8ayTkVvOvwkEehKSMBMY9cxOuBRCIh8oZpmIkyzagyg6YFsW9evNYJhbONNy
 y05kQdsBOP3woICl4qkCeYnk8QsrbZP1Z0+kVbWg7hYeoz8IvyVbi2Xbf6Lt/opGfjDN
 aWUQ==
X-Gm-Message-State: AOAM532dPPWmlCE0/G4dzmW/KzzhHJvxU2XSMDl8y+YNW5v9jNhJ2Ve4
 xKdw4LXmNYxtZ544Tv1DCZU=
X-Google-Smtp-Source: ABdhPJz2EFGkeo94PcaY8UQDCUVYJyF/C0qFCnJHLmZHnw28VJfmsI5BiIngRgNAzmaLQti6EEKcaA==
X-Received: by 2002:a17:906:390c:: with SMTP id
 f12mr5187225eje.31.1612995287367; 
 Wed, 10 Feb 2021 14:14:47 -0800 (PST)
Received: from TRWS9215.usr.ingenico.loc ([78.190.146.52])
 by smtp.gmail.com with ESMTPSA id b3sm2130578edw.14.2021.02.10.14.14.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 14:14:46 -0800 (PST)
From: Fatih YILDIRIM <yildirim.fatih@gmail.com>
To: pure.logic@nexus-software.ie, johan@kernel.org, elder@kernel.org,
 gregkh@linuxfoundation.org
Subject: [PATCH 0/1] Coding style fix
Date: Thu, 11 Feb 2021 01:14:38 +0300
Message-Id: <20210210221439.3489-1-yildirim.fatih@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 linux-kernel@vger.kernel.org, yildirim.fatih@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,
I have a coding style fix in greybus subsystem.

By the way, I'm following the Eudyptula Challenge Linux kernel tasks and
this patch is related to my task no 10. I hope I'm doing it the right way.
Thanks for your understanding and kind comments.

Fatih YILDIRIM (1):
  Macros with multiple statements should be enclosed in a do - while
    loop.

 drivers/staging/greybus/loopback.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
