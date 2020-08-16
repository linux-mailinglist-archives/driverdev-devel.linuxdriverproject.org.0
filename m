Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A1F2458BF
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Aug 2020 19:20:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0180487D57;
	Sun, 16 Aug 2020 17:20:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dS5SF3oaR9x8; Sun, 16 Aug 2020 17:20:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CF09D87D2C;
	Sun, 16 Aug 2020 17:20:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E43A11BF410
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 17:20:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BCD7B20469
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 17:20:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YEz5jfNygFl2 for <devel@linuxdriverproject.org>;
 Sun, 16 Aug 2020 17:20:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 9DB5120459
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 17:20:32 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id f1so12673168wro.2
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 10:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=BZwN8MQg3nUFNF05W+2y2xyOzCj9uWLpsipBs2x7lzE=;
 b=OdF2viLC4Km2Gpz9+9RJVA7rt+XjVlOVW9vmiQsJqhFgP4DFsYFTFFQsxN139P66wh
 XbKsdyXac23JjtF85aKekKIDNarJVDAIRysGm87hJpr/O/pWNPl9v1A3juCZQD5MyqKe
 0/6on5ZOq6kFGIY2LewfyMpRrF+PmJGOUGALrnKYzL39EMfvgA7XZCUV85JQHhCpcHZ+
 JsE6oKmJaGaIxYriZneHzAuPnkjZtRBKU+Hg95BqeoLNtP2nS5fERzZ9kQmQc2yM6aqu
 cI1FRBBmNpJlwU2gsj55Ycw8iMd5h/4H5y142uKUOHCLQtMz9+0hifeOGMOeTmpWbieM
 gNCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=BZwN8MQg3nUFNF05W+2y2xyOzCj9uWLpsipBs2x7lzE=;
 b=lAiP9VUPiZDdV6OrP7S79CK29M9jb0TfTDlROQZgT3BmwvmmDmPvYnl7q0xrUHX4DQ
 m4z4fp2mK+YJja5BDAsvWONe6vAHr+XrEZKDFVSK5ku4M5c3/14s8UXuzNes72MhQyc5
 7LhW0nNL44PIVNydRsaOsFJFCDA8oaU9R+WxPW+sjs74hnd1pzwCAcBjLstYbE/hYsf8
 cFnys2ommf+/leREl54ieomVpJ0wgKuQ4CGA6S06oodH3WI0UKd2hWLhUQmvFmp+np8O
 GQ333ZXMDQTu7L4x9md4BGlpOnRqc9KX5WWaFG0clXPy/082bQj7RfhqboViTw/OEXK+
 Zn4w==
X-Gm-Message-State: AOAM5313wX6EdumTyu0cPLVqfuhsPnbXhL/EuRmyBld1D1P/0YkCHQ5K
 A8TNIyCFAAv/pdj8CUlrBmE=
X-Google-Smtp-Source: ABdhPJwpG5arhaOEzF9s34BmgaRInsqakeB6bRu5uNHOS/NU0bCn50ErFYB617wDDSwr0m7xnSb2bA==
X-Received: by 2002:a05:6000:c:: with SMTP id
 h12mr11192685wrx.49.1597598430704; 
 Sun, 16 Aug 2020 10:20:30 -0700 (PDT)
Received: from tsnow ([94.159.146.190])
 by smtp.gmail.com with ESMTPSA id h7sm27140377wmf.43.2020.08.16.10.20.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Aug 2020 10:20:30 -0700 (PDT)
Date: Sun, 16 Aug 2020 20:20:26 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/3] Replac BAG/BAG_ON with WARN/WARN_ON
Message-ID: <cover.1597597955.git.tomersamara98@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Suren Baghdasaryan <surenb@google.com>, Riley Andrews <riandrews@android.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, Hridya Valsaraju <hridya@google.com>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Laura Abbott <labbott@redhat.com>,
 Martijn Coenen <maco@android.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This series convert BUGs/BUG_ONs to WARNs/WARN_ONs

Tomer Samara (3):
  staging: androind: Replace BUG_ONs with WARN_ONs
  staging: androind: Add error handling to ion_page_pool_shrink
  staging: androind: Convert BUG() to WARN()

 drivers/staging/android/ion/ion_page_pool.c   | 14 ++++++++++----
 drivers/staging/android/ion/ion_system_heap.c |  3 ++-
 2 files changed, 12 insertions(+), 5 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
