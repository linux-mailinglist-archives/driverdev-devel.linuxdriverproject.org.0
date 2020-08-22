Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C932F24E973
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Aug 2020 21:42:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3819886521;
	Sat, 22 Aug 2020 19:42:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LAHd0_AC6MF0; Sat, 22 Aug 2020 19:42:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A84F86493;
	Sat, 22 Aug 2020 19:42:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C9831BF42E
 for <devel@linuxdriverproject.org>; Sat, 22 Aug 2020 19:42:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 753DB86493
 for <devel@linuxdriverproject.org>; Sat, 22 Aug 2020 19:42:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VvpvOyBMWuoz for <devel@linuxdriverproject.org>;
 Sat, 22 Aug 2020 19:42:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B616F86440
 for <devel@driverdev.osuosl.org>; Sat, 22 Aug 2020 19:42:31 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id f18so3426956wmc.0
 for <devel@driverdev.osuosl.org>; Sat, 22 Aug 2020 12:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=/FaXkTTvbwZErSBhMWgpJ+vVSqlKKdjiuZmdcAQZjG8=;
 b=Z1Tpjb1ir9zO7hPN1UUHbgsx9RjpM/Um089u7XrhvHJ5nuVjWwkL3erLU0Y/umi1Wv
 m9kuEJ+CTzhh2Ykd4itN8Vv3tG+vgSTt7BHe5kR7AyGp/X97Bl7i7fP4elG/zRIm2SO8
 EK7ow4uQSyyuZTgIjRMEUraZ9isZ66xQQATQf/OIWQVi9ufyRNRoW3eoI87LwsTOYyuy
 7MFnc1nHZtv7fWM9ANOqah2R2EQsaPABIokBe1evXXY1n2Ne6zS2chDrzbgJYg77w1is
 xkTjUmdDQN9oTEg6M8uCK2lE50/9WgAATtZjRC671HmpF4tuxgRDa2R1NI3tLR8eVJE1
 KQEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=/FaXkTTvbwZErSBhMWgpJ+vVSqlKKdjiuZmdcAQZjG8=;
 b=E45hdRwE2lZaZFxS4b4dTYXgZf8vGeXGbRgJ1eivl0MD9sA1hk5vSgyUxmV5dlsANP
 HeCL/2+pT1+vyhvtLXU6lwBQd69FNOviBjfX8AthBmM6cQnfwRX+HSFK6iMsU5+9xBLg
 nBT7DMamKg9L3QIQIrlxGQV2OWJgMapL9bWYFFyADOhv2O4kYiC5tHuxhFuSRQIjW6UT
 Suqev+2D/CBiR4JbcsFFDrwTMlvtKvcusdPbHKuWiPt7VU5ZYbrPhvgPXIUstWOY2nc0
 HDSJAOBruLa1I3HVatVRbXs18uJw2jgd/KlNSdXgE6lljNGE6axhxZarsixU153a4m3A
 4QRw==
X-Gm-Message-State: AOAM532o8xoCRSYmHpAcVPJrrXIRulnTazFW71adCte3HWcPgvi2AwqQ
 egQ8CAiLOSEC2xVVGXJF0DE=
X-Google-Smtp-Source: ABdhPJzQZuy38Z0r04hEC3wXtjUTy0THHcyaQC8KBkpYCKawKwMJzppxfAkksADg4SahzODcEl3jSA==
X-Received: by 2002:a1c:f017:: with SMTP id a23mr8409537wmb.164.1598125350015; 
 Sat, 22 Aug 2020 12:42:30 -0700 (PDT)
Received: from tsnow (IGLD-83-130-62-237.inter.net.il. [83.130.62.237])
 by smtp.gmail.com with ESMTPSA id n8sm12931002wra.32.2020.08.22.12.42.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Aug 2020 12:42:29 -0700 (PDT)
Date: Sat, 22 Aug 2020 22:42:17 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v5 0/2] staging: android: Remove BUG/BUG_ON
Message-ID: <cover.1598125227.git.tomersamara98@gmail.com>
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

-v5:
	remove WARN_ON from ion_page_pool_free

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

 drivers/staging/android/ion/ion_page_pool.c   | 6 ------
 drivers/staging/android/ion/ion_system_heap.c | 2 +-
 2 files changed, 1 insertion(+), 7 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
