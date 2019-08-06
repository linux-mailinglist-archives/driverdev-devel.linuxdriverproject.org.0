Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BFF83942
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 21:01:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 21F0721FEF;
	Tue,  6 Aug 2019 19:01:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RLjV5WlPBkmL; Tue,  6 Aug 2019 19:01:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 971142154E;
	Tue,  6 Aug 2019 19:01:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 501EB1BF2F4
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 19:01:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4C793860A3
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 19:01:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ubjFfThzFXmc for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 19:01:31 +0000 (UTC)
X-Greylist: delayed 00:15:20 by SQLgrey-1.7.6
Received: from mail-ot1-f73.google.com (mail-ot1-f73.google.com
 [209.85.210.73])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8A345855D2
 for <devel@driverdev.osuosl.org>; Tue,  6 Aug 2019 19:01:31 +0000 (UTC)
Received: by mail-ot1-f73.google.com with SMTP id q16so50321466otn.11
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 12:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=wP2k6PxKQdbd17RqxG3El2muiWWiSGy2kc2Gh5XByrI=;
 b=WDd/BGxofkfzmjb4D/zPUq3gRY5vVS5MLRGKZVCYfXHv34Te7S8e4Bwb30pkMShHie
 1+4797JKG5wBhEsNIjw79qTNSW2+Eznh3vG1/oYul2LAqbqiPFy9nIyRofpSeZTqz7/L
 RtZLGtGCOrSblUrgQ7Lgwa3Gl52NUeBClGtks3ov0ttCGeOqOu0muBrhHxFiaanYlI7X
 qbZUZAii/D6/GBW8a79S/zA0J+/z8j3TkU8WOQMUaGOSBYP28+IB8fZvabkUKLCPzuxH
 /EQrxqgUJoYu3vguLR46VNRLNWErX+wiTN8fS2qaSZPvSoWWDhPtpYyDs5a7ASHy/+ha
 Ku9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=wP2k6PxKQdbd17RqxG3El2muiWWiSGy2kc2Gh5XByrI=;
 b=qtNoNO4BB8r9Nfu3/lyzyRGY/chxxv2hgE9fnfM53Cx4GkSQazDPoY7lGD0bEW5bX0
 iL14oxsszoIfkUHFoS3Awzew6HOYl/Wj7Xh5keicHcMn30PelNo44n0w3wHjZf2XoON8
 AaUdvfq5UY5BqcThdf5zxm1M3tRTONJp4BCKgHAJy2sh/pnm/5BYpiQtMaNWrP9ELysF
 lkY6aKVWJTyeCV23lKPLiFOcq+prOWbq/PYofqPASoRRj93flHtagqNp3FF3jKbHHdSD
 5OGr0RcmcmrciKGGUtXLlQ7u6hAiZrE8J0eauQu/W/IRh9bt1bJetnxdTQnxICDFrUZI
 BmHA==
X-Gm-Message-State: APjAAAVw/1Sr1zaoneJLEoJrseTV+7/gHWHdx33kDIi7CCHevYwoIVzs
 N1jeOdbaKLK09UIrFTwTtN+nSkdpmGA=
X-Google-Smtp-Source: APXvYqwwYmJkHthiaIvaPs+VLc2DIFtXsjOTFOVcyvEdIPgfAq5a3Y0oU2QxDuFPqvHfDsC36M25NaYhWtk=
X-Received: by 2002:a65:57ca:: with SMTP id q10mr4401454pgr.52.1565116824642; 
 Tue, 06 Aug 2019 11:40:24 -0700 (PDT)
Date: Tue,  6 Aug 2019 11:40:04 -0700
Message-Id: <20190806184007.60739-1-hridya@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [PATCH v2 0/2] Add default binderfs devices
From: Hridya Valsaraju <hridya@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, 
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
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
Cc: Hridya Valsaraju <hridya@google.com>, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Binderfs was created to help provide private binder devices to
containers in their own IPC namespace. Currently, every time a new binderfs
instance is mounted, its private binder devices need to be created via
IOCTL calls. This patch series eliminates the effort for creating
the default binder devices for each binderfs instance by creating them
automatically.

Hridya Valsaraju (2):
  binder: Add default binder devices through binderfs when configured
  binder: Validate the default binderfs device names.

 drivers/android/binder.c          |  5 +++--
 drivers/android/binder_internal.h |  2 ++
 drivers/android/binderfs.c        | 37 ++++++++++++++++++++++++++++---
 3 files changed, 39 insertions(+), 5 deletions(-)

-- 
2.22.0.770.g0f2c4a37fd-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
