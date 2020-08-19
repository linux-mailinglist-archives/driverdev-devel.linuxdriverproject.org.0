Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4017824A6FB
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Aug 2020 21:38:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 85D92861F0;
	Wed, 19 Aug 2020 19:38:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D4zfeyEVYEvv; Wed, 19 Aug 2020 19:38:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4FA12861C5;
	Wed, 19 Aug 2020 19:38:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 291521BF316
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 19:38:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 241A0877F2
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 19:38:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uHVK1jJuCLFQ for <devel@linuxdriverproject.org>;
 Wed, 19 Aug 2020 19:38:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B59DC877FA
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 19:38:08 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id o18so27683935eje.7
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 12:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=doOVIJAl8aLbOgFBDKcIqb/ccFDrxWvGVJaNvG3le54=;
 b=Tcdqs2SGsYZ0JWSHaz3cq9atV1buOc/Z3S7+pouyoYfnhhaFd5rMUYsopHHjbbwUPj
 0G3UxSPWgoPBo4+bz5IXvoJGkZiYOo71TMJJWsTbtEWp63hs6rFIlKtiCcjKF9DhC2uH
 t2EXW/ivJ/6qFfVYyvp372hQX0ykJz4IozOHLKWzIgq+/cLJAbN8f9pbppPlS0J15HaC
 rNkuZW7zBnNy/Kbqu+t85E7PfPRSoxM3v4ImEoksBxKsyjP3MhSwWvRh35F7/T2WMDbY
 jPh5sAmKTwd2HF4dum2Yj3HjwqOKn39sD+61lwjQCKj0+tsJujkvYq4BWcqSgdH2KjaE
 J8rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=doOVIJAl8aLbOgFBDKcIqb/ccFDrxWvGVJaNvG3le54=;
 b=OENW/zBwQumQIMig/Mc+zaeEoMktOyMrGj1kKicXCt/DHQxMunFb5+o7tuAjZd65um
 4I/Qdv4ICyH884kV8QXAaenF4rYu7gVwSLUIvk2D/DBvYMzGZDfnSmeyAJIuB1qgim4p
 Xlq2O4gRtz/a0C5nNVwEVm33z3exrS7RZaIas6x3unG+pK1dASmmn/XYr40EYoe9um8Y
 SbWN4zHvS5gHBnLgOZgi1Fv/9RIF7OdR6eOzb9LeJKkUmZbnGjoBll0wGXT10jzrrKMN
 My8hsOypJed/pfpp7l0Z9uuGEcS7DJRpNsQ7iK6xL8wMHGXtMdrRTMHKY2opjYFpZR6g
 xNUQ==
X-Gm-Message-State: AOAM531ZfDwLquxvco4SyANa1XNeD/zbiGEs5URU52ghPZJwAwoJkxdg
 UlkOQZKLydV2JaZt27yrYD8=
X-Google-Smtp-Source: ABdhPJxmx3IkW3gTtNbDIal0hKTHsYWoX6DaIFrxkZ9x+FUQvRGrfHzoGsS6nFJi9uayR13xyljY6A==
X-Received: by 2002:a17:906:d054:: with SMTP id
 bo20mr28105958ejb.9.1597865887048; 
 Wed, 19 Aug 2020 12:38:07 -0700 (PDT)
Received: from tsnow (IGLD-83-130-68-114.inter.net.il. [83.130.68.114])
 by smtp.gmail.com with ESMTPSA id hk14sm19573503ejb.88.2020.08.19.12.38.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Aug 2020 12:38:06 -0700 (PDT)
Date: Wed, 19 Aug 2020 22:37:58 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 0/2] staging: android: Remove BUG/BUG_ONs
Message-ID: <cover.1597865771.git.tomersamara98@gmail.com>
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

Remove BUG/BUG_ONs from androind/ion allocator and add error handling to
calling functions

Tomer Samara (2):
  staging: android: Remove BUG_ON from ion_page_pool.c
  staging: android: Remove BUG from ion_system_heap.c

 drivers/staging/android/ion/ion_page_pool.c   | 14 ++++++++++----
 drivers/staging/android/ion/ion_system_heap.c | 15 ++++++++++++---
 2 files changed, 22 insertions(+), 7 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
