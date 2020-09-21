Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 766BC27353C
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 23:54:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 355F287218;
	Mon, 21 Sep 2020 21:54:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GD4DfhnpUHFw; Mon, 21 Sep 2020 21:54:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 984D3871D6;
	Mon, 21 Sep 2020 21:54:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 65D801BF336
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 21:54:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 625FF8650E
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 21:54:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DWc+qW4GO6Wo for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 21:54:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B557186256
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 21:54:16 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id s13so1064596wmh.4
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 14:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1e2+LFvtNs54bJO28h42rbrhZqmujvH9xIDpVdek6Gs=;
 b=ZUjpmkz90uzc0mOzSbfJeBueL4Oi94IPGMGmo3qTaczNgiBFIp1aiE/CAdCr6WkblL
 85sZg6DO2zAX3GUZ8cNi3nk0w6Z0jsjLjlD7//mhEQ26qawSWNRV0IauivYaGyZKhCmA
 oY7b99kUs65dPs7tDUBlYMiVMeRxBVsKRWtvtqL6ZJbRmoojU2i8tNZpPqK/CDXZUZMW
 KcJw2qIlaALk+w3NgUcPIuEanySvsJtMCJyPx2nk1le3dAB0WU3QGX5MhujjDbyRrAOe
 +dTWOJgo+hjazpkOXd9dsAbpLNF9O8qnxf7ZGVK4W//ZEMqJYZBq8bm9B8fHRiMT/Jmp
 p/jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1e2+LFvtNs54bJO28h42rbrhZqmujvH9xIDpVdek6Gs=;
 b=iwqhB7+5+psN6itn1XBdDtdgd/74h2fuHHzLyPOyZB5+ANEXsU4FbYxy3DgGLHiYmx
 k+OcEX97QDa62vUtzN0LyJ5d2H7XRk+jtFqv04DQJgCDa9qmYnu1FsKDY5xLLCaLGQVm
 iMJBGoph9NP+dzqHdVLrkO2TH8/HqR56hf8VGlIE5U2FVEehjByr3yOzx5MAKm8oihrE
 pTRCWJWyZenkPdVVDxyI4siNnK0qZpfRO1cSJL1lunbsMTElt0gBuaR3aojPmZW/dDVD
 ONdv+f6DgK4GkLeyggOg/pF3U4IvyVOCgETwUehQ57BVR44WBv6Du389q7K/q/hEVDyx
 1gmg==
X-Gm-Message-State: AOAM5303QEJmGmqTFiEEKuhLsFNou8BBZju1x7RZIvG2NbHN5VXZ0Lsl
 u1UUcCGIoUqHSN7b9YXV5oY=
X-Google-Smtp-Source: ABdhPJyHePLFDLI5jbzVhYB8QGOYCkmS1RiKrmm/aDzZcSzswgFQO/kznU0v9WAUrLrnOj5kQMv/ng==
X-Received: by 2002:a1c:2042:: with SMTP id g63mr1262709wmg.174.1600725255030; 
 Mon, 21 Sep 2020 14:54:15 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id t124sm1282200wmg.31.2020.09.21.14.54.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 14:54:14 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Dewar <alex.dewar90@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linus Walleij <linus.walleij@linaro.org>, Alan Cox <alan@linux.intel.com>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH RESEND 0/5] atomisp: Fixes and cleanups
Date: Mon, 21 Sep 2020 22:53:49 +0100
Message-Id: <20200921215359.45003-1-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Mauro,

Over the last month I've sent a few scattered patches to fix various
warnings from static analysers, but they seem to have fallen through the
cracks? I'm reposting them here as a series to make them easier to
review. If you do have any feedback that'd be great :)

Best,
Alex


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
