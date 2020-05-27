Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E48A01E39EB
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 09:12:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 86C2F87C8A;
	Wed, 27 May 2020 07:12:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sCCC-bFZFAq5; Wed, 27 May 2020 07:12:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 030DC878C0;
	Wed, 27 May 2020 07:12:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 110241BF423
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 07:12:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0DCD88836C
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 07:12:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nbh8Fw8lycP8 for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 07:12:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D793E8833F
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 07:12:08 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id ci23so1114906pjb.5
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 00:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sCw1lGoEROKmEmhA5JVEoEjAugXh66VFW++dgNmaAuk=;
 b=ktoSMEguPJ8tS33p/nXe54OWEs5xrsGaluX65sfrK1qZgEjolWUpZbQ/S7VI4s6oZ4
 nA3+mHOUhZA3ZnCNQ0SJTs/GN5EWsYQlVzcg4VJA4awizjKbDq5MnPt9Vdy6MVyd3bZc
 5iy5OHwyoVNF62TFO5iiYt9rzAGbk6rQXMQ+61QhD7fivlin/wC/iC90kq0MegokddOa
 NKcvgvTgpfMoD94+VCqADurNp8HK+uxzZ0eQEf3Qs7sp3p9AGqMKqGAXMGASuWMNeFw0
 +lVF+m5bmZvmK1VHBhqJxIMwGvqs3cleEoXElwbgiVtLwsDFy4wzyB+11GeqpQqzuzN1
 U35w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sCw1lGoEROKmEmhA5JVEoEjAugXh66VFW++dgNmaAuk=;
 b=DiOwRPd7CBzpJqLWB22bnt2vjTrCNYKl9VSKmMXDCpRzOoQryWUcuppW7q6pvFSa7h
 rPZjVl60hDRjJoCZpLMDmVdgePtggxPJGulwLtIdKzn0TzLvROMHupjjHCfS/0JxDLn3
 YKpV1jSvtyAzVhzP6OJ0M1fg3KuBcUn59AaTqTXlDgXAjIB3ITkfKE/J+t/n2y29E3et
 uMdvIowqNHPaegneEuRX4xe7ggUdcQEYaPpuwHn2SGiGCU1rHhtvBIYa3lD+vkeovbIH
 lrSBUxsC9KuNBEfc60JdOWiRe/CtRbOwgPabZhrNjOCg6sKxNR0/AmKpeGY/uyaIRqd+
 xOng==
X-Gm-Message-State: AOAM533kaduv4tx77Zmi2qWENtP+E1BsIYRjxUEW0pnEJeRe+An5355X
 BD1PS+mwU9Yl9MShOfIDoso=
X-Google-Smtp-Source: ABdhPJzwIynGMI15C5qfyiQfZjRwRIe6ucirx2w/s3fNOvKzhAtovIMVsZLNyXAeslflPbOp07qhmQ==
X-Received: by 2002:a17:90a:248c:: with SMTP id
 i12mr3442044pje.213.1590563528110; 
 Wed, 27 May 2020 00:12:08 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id 10sm1306431pfx.138.2020.05.27.00.12.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 00:12:07 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 0/7] media: atomisp: Address several clang warnings
Date: Wed, 27 May 2020 00:11:43 -0700
Message-Id: <20200527071150.3381228-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
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
Cc: devel@driverdev.osuosl.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi all,

This series aims to clean up the code while addressing the majority of
clang warnings in this driver, some found by the 0day bot and others
found by me.

There are several enum conversion warnings that happen, which I do not
really know how to solve without understanding how exactly this driver
works. I would appreciate some guidance or a solution. Below are the
warnings, sorry for not wrapping them but they would be hard to read
otherwise.

../drivers/staging/media/atomisp/pci/atomisp_subdev.c:49:65: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
        { V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, CSS_FRAME_FORMAT_NV21, 0, CSS_FRAME_FORMAT_NV21 },
        ~                                                              ^~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp//pci/atomisp_compat.h:101:32: note: expanded from macro 'CSS_FRAME_FORMAT_NV21'
#define CSS_FRAME_FORMAT_NV21           CSS_ID(CSS_FRAME_FORMAT_NV21)
                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp//pci/atomisp_compat_css20.h:117:22: note: expanded from macro 'CSS_ID'
#define CSS_ID(val)     (IA_ ## val)
                         ^~~~~~~~~~
<scratch space>:69:1: note: expanded from here
IA_CSS_FRAME_FORMAT_NV21
^~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp/pci/atomisp_subdev.c:49:39: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
        { V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, CSS_FRAME_FORMAT_NV21, 0, CSS_FRAME_FORMAT_NV21 },
        ~                                    ^~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp//pci/atomisp_compat.h:101:32: note: expanded from macro 'CSS_FRAME_FORMAT_NV21'
#define CSS_FRAME_FORMAT_NV21           CSS_ID(CSS_FRAME_FORMAT_NV21)
                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp//pci/atomisp_compat_css20.h:117:22: note: expanded from macro 'CSS_ID'
#define CSS_ID(val)     (IA_ ## val)
                         ^~~~~~~~~~
<scratch space>:68:1: note: expanded from here
IA_CSS_FRAME_FORMAT_NV21
^~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp/pci/atomisp_subdev.c:48:65: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
        { V4L2_MBUS_FMT_CUSTOM_NV12, 12, 12, CSS_FRAME_FORMAT_NV12, 0, CSS_FRAME_FORMAT_NV12 },
        ~                                                              ^~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp//pci/atomisp_compat.h:99:32: note: expanded from macro 'CSS_FRAME_FORMAT_NV12'
#define CSS_FRAME_FORMAT_NV12           CSS_ID(CSS_FRAME_FORMAT_NV12)
                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp//pci/atomisp_compat_css20.h:117:22: note: expanded from macro 'CSS_ID'
#define CSS_ID(val)     (IA_ ## val)
                         ^~~~~~~~~~
<scratch space>:67:1: note: expanded from here
IA_CSS_FRAME_FORMAT_NV12
^~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp/pci/atomisp_subdev.c:48:39: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
        { V4L2_MBUS_FMT_CUSTOM_NV12, 12, 12, CSS_FRAME_FORMAT_NV12, 0, CSS_FRAME_FORMAT_NV12 },
        ~                                    ^~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp//pci/atomisp_compat.h:99:32: note: expanded from macro 'CSS_FRAME_FORMAT_NV12'
#define CSS_FRAME_FORMAT_NV12           CSS_ID(CSS_FRAME_FORMAT_NV12)
                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp//pci/atomisp_compat_css20.h:117:22: note: expanded from macro 'CSS_ID'
#define CSS_ID(val)     (IA_ ## val)
                         ^~~~~~~~~~
<scratch space>:66:1: note: expanded from here
IA_CSS_FRAME_FORMAT_NV12
^~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp/pci/atomisp_subdev.c:47:34: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
        { MEDIA_BUS_FMT_JPEG_1X8, 8, 8, CSS_FRAME_FORMAT_BINARY_8, 0, ATOMISP_INPUT_FORMAT_BINARY_8 },
        ~                               ^~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp//pci/atomisp_compat.h:118:35: note: expanded from macro 'CSS_FRAME_FORMAT_BINARY_8'
#define CSS_FRAME_FORMAT_BINARY_8       CSS_ID(CSS_FRAME_FORMAT_BINARY_8)
                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp//pci/atomisp_compat_css20.h:117:22: note: expanded from macro 'CSS_ID'
#define CSS_ID(val)     (IA_ ## val)
                         ^~~~~~~~~~
<scratch space>:65:1: note: expanded from here
IA_CSS_FRAME_FORMAT_BINARY_8
^~~~~~~~~~~~~~~~~~~~~~~~~~~~
5 warnings generated.

Please let me know if there are any comments, cheers!
Nathan


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
