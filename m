Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2654C320ADC
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 15:04:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1C6B4870A5;
	Sun, 21 Feb 2021 14:04:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zXFrmZLlUXuX; Sun, 21 Feb 2021 14:04:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2761B870AA;
	Sun, 21 Feb 2021 14:04:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E3E731BF951
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 14:03:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E0F5385DD8
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 14:03:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WJpXR5Wlj2s9 for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 14:03:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
 [209.85.210.179])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4C13485DB1
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 14:03:58 +0000 (UTC)
Received: by mail-pf1-f179.google.com with SMTP id x129so215601pfx.7
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 06:03:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=pzWhTSdAe7cqn4KT2SjhkgBpropTuu+rr5Ez+qPvqEg=;
 b=rUFtbZQ6W7A7velXcjvOcFwR3m0uChRs9Xaz0AfHziVum/iGQUPfLuqDy94YTD9lUX
 de9s9di6inkxuOM7Jl2d3wLCfblFxacXJGUVw3v5bvBtY1T3qS2OSbUyErz8L+edZnuf
 dJtKqxZ/3nN/CbUM4a6ZnisUGEuc8g6UdtQUWEGyXa8a5kemZ8OVRzmEIfQ5fzcvZMVV
 P26FqF4eSNODTgdEThlnxK46vyLQFXE4cUmYNG6Gr+ZfPfj/9gxJSG1BhohkL7VCQEmQ
 M6yZ8mz4FKbZ9Q3FsvkTyyqdT6Sl9pVr0C4HKEdGaL6O2US/6/R5C9IM5fwyqh13X1L6
 C3hQ==
X-Gm-Message-State: AOAM5309I7wQGT++HYAAtDpCAgcikIZ4KpMV2m/G4XfOYdJIWpi08ERn
 Xgmy3CBkvm9qbCmQNaTFctM=
X-Google-Smtp-Source: ABdhPJwLdNMVeWd78rkGu1VPCg315nj6cV6hekFSpPJ1MFEEfbwTGRtC5qlb+4gN4lzwh5REMy0zFQ==
X-Received: by 2002:aa7:92c4:0:b029:1e6:c4:c821 with SMTP id
 k4-20020aa792c40000b02901e600c4c821mr18364472pfa.10.1613916237891; 
 Sun, 21 Feb 2021 06:03:57 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.154.12])
 by smtp.gmail.com with ESMTPSA id y12sm14459340pjc.56.2021.02.21.06.03.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 06:03:57 -0800 (PST)
Date: Sun, 21 Feb 2021 19:33:53 +0530
From: karthik alapati <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/3] fix sparse warnings
Message-ID: <cover.1613915981.git.mail@karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

the following patches fixes two  byte-order issues and a Makefile 
issue and fixes these sparse warnings


drivers/staging//wimax/i2400m/op-rfkill.c:89:25: warning: incorrect type in assignment (different base types)
drivers/staging//wimax/i2400m/op-rfkill.c:89:25:    expected restricted __le16 [usertype] length
drivers/staging//wimax/i2400m/op-rfkill.c:89:25:    got unsigned long
.
drivers/staging//wimax/i2400m/fw.c:514:27: warning: restricted __le32 degrades to integer
.
drivers/staging//media/atomisp/pci/runtime/isys/src/ibuf_ctrl_rmgr.c:34:6: warning: symbol 'ia_css_isys_ibuf_rmgr_init' was not declared. Should it be static?
drivers/staging//media/atomisp/pci/runtime/isys/src/ibuf_ctrl_rmgr.c:40:6: warning: symbol 'ia_css_isys_ibuf_rmgr_uninit' was not declared. Should it be static?
drivers/staging//media/atomisp/pci/runtime/isys/src/ibuf_ctrl_rmgr.c:46:6: warning: symbol 'ia_css_isys_ibuf_rmgr_acquire' was not declared. Should it be static?
drivers/staging//media/atomisp/pci/runtime/isys/src/ibuf_ctrl_rmgr.c:106:6: warning: symbol 'ia_css_isys_ibuf_rmgr_release' was not declared. Should it be static?

karthik alapati (3):
  staging: wimax/i2400m: fix byte-order issue
  staging: wimax/i2400m: convert __le32 type to host byte-order
  staging: media/atomisp: don't compile unused code

 drivers/staging/media/atomisp/Makefile   | 5 +++--
 drivers/staging/wimax/i2400m/fw.c        | 2 +-
 drivers/staging/wimax/i2400m/op-rfkill.c | 2 +-
 3 files changed, 5 insertions(+), 4 deletions(-)

-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
