Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A499024D880
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 17:27:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 485D387ECA;
	Fri, 21 Aug 2020 15:27:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y-oP7j+7BwD7; Fri, 21 Aug 2020 15:27:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2FCCC87D60;
	Fri, 21 Aug 2020 15:27:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E71C1BF5F8
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 15:27:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 589F087D7F
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 15:27:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PTAVCQYy4myq for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 15:27:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8C94887D60
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 15:27:12 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id o21so2250433wmc.0
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 08:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=zw/VDtloWxTMBmKSwhrENnZrVtO+U7yJP3Ir4rxEdac=;
 b=QyOQFfUyFM4JBaS8ilL3u52rxZcD+q17wgykSmXsRnmcB4Ssbxj/1tNZgsLv1LYhSz
 HIpEj3W9jBmxD+vFzuyH2swn+FUK2I37JZi16oTSCg8AP7AByhvhWMwCpvCfQx5DBSNL
 evbOBIWMvL21DwF6UrxAQNIqGz6magZk09dU2kRQ8p/XyE6R4lVyyhZ9q3SUaLne7Alm
 f55D6JUfoYDw8fBzAvbIie7LC7sr9CbesYo5kbDrRQKzQLCSLa25ZzzPrak9jS/Pb9fU
 3jAwWpvInnY2ragogDkCfSE2DaHk3u2EqSmZTGR3dsaPo4LUokGwNwq/xZQPVGudteJW
 SKfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=zw/VDtloWxTMBmKSwhrENnZrVtO+U7yJP3Ir4rxEdac=;
 b=ewrMirgemk2DWGlCVAast0fXcBxPjrkIognQQmd7oTr56OuYLm3FlwEnIUEOWbYU0/
 mRDsNFtJx13iJy3cOiHJyOesdDF4YqLY8IYVIkAVBQtitGBtxB2bdIu2scQxcKxBDozR
 cnmkh207//BRLgSuHsc70eoPnU8wHR14VqXTTwhoN+ZJ4sdzEn7+T6MnpOczdchwxMsz
 frMAD1KD3+SN7BgrXmvSwVr3L1HZT6iUHQvTMKGd8EiERtDHwOLCNF8j4QJY8fPy+gRa
 iUI/PWqRgJKg23DrlfNdvngpaXHKZspuK1uECp61YDKBIieyo5i/zMOotJpAP/D4etQF
 GQuw==
X-Gm-Message-State: AOAM533VJJ0LISasVzUs3/zfmIjj56/39F1XJ8gtg+qe0QrendlSE8fa
 8SIHXxNA9MLGemnyTQzrR9E=
X-Google-Smtp-Source: ABdhPJxhWkhdDX+RnJTqaXlCpDIE7cYQ0ES9HhfiNrQ8TgSgajEZN9A9Ao5fD3ga/NMsjYjfJg7hKA==
X-Received: by 2002:a05:600c:c7:: with SMTP id
 u7mr3881615wmm.135.1598023630998; 
 Fri, 21 Aug 2020 08:27:10 -0700 (PDT)
Received: from tsnow (IGLD-83-130-85-196.inter.net.il. [83.130.85.196])
 by smtp.gmail.com with ESMTPSA id r12sm5451960wmh.46.2020.08.21.08.27.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Aug 2020 08:27:10 -0700 (PDT)
Date: Fri, 21 Aug 2020 18:27:04 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4 0/2] staging: android: Remove BUG/BUG_ON from ion
Message-ID: <cover.1598023523.git.tomersamara98@gmail.com>
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
 Hridya Valsaraju <hridya@google.com>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Laura Abbott <labbott@redhat.com>,
 Martijn Coenen <maco@android.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove BUG/BUG_ON from androind/ion


-v4:
	some changes based on Dan Carpenter review:
	- Remove error check at ion_page_pool_remove (conditions are impossible)
	- Remove error check at opn_page_pool_alloc
	- restore WARN_ON at ion_page_pool_free
	- Remove unnecessary error check at ion_page_pool_shrink
	- Add /* This is impossible. */ comment at order_to_index
	- Remove error handling of order_to_index

-v3:
	remove WARN/WARN_ON as Gerg KH suggests

-v2: 
	add error check to order_to_index callers

Tomer Samara (2):
  staging: android: Remove BUG_ON from ion_page_pool.c
  staging: android: Remove BUG from ion_system_heap.c

 drivers/staging/android/ion/ion_page_pool.c   | 6 +-----
 drivers/staging/android/ion/ion_system_heap.c | 2 +-
 2 files changed, 2 insertions(+), 6 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
