Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DD9229A8C
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 16:50:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5D27020509;
	Wed, 22 Jul 2020 14:50:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gXSW5caQWaCd; Wed, 22 Jul 2020 14:50:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 81373204D0;
	Wed, 22 Jul 2020 14:50:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0C4361BF36E
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 14:50:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 091AA8842D
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 14:50:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eseDbAAuAhP1 for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 14:50:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8726688424
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 14:50:37 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id f16so1509322pjt.0
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 07:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=5KwDFzjwATlcwnMsKxx3jtI0OOjrYoZsX8bMqHTFy80=;
 b=a9kkA8q3PPehP2B672LSFx62bjZbNwORAao4mIGVqvOETLOs1+JfnGGkY5/Vt2yPct
 iWFcLhSRIs+eUyGSEa0tp03mGOS5JAlegURFOMF+WdrJTL6LA55mgO2ykxE6rj/2uNbT
 FxWpGKqZhGzKWiAwqKlWeysrCucbqQM1GD9z49aZ3beL5OVn7b/OeCrT6H4Sp0CnvAzl
 5jcnJjG10YUszy1axPAtoKYMhWhHlfAggdThjNI9G2Zya8wAW3vb8aklMHExaFv41RV2
 oPj+0nG5IF8VfVleyakNLYrTx/g4EbqdDF35mEXcsim6ahhANQlpZjI/0Fys6CM6MFWU
 +Hjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=5KwDFzjwATlcwnMsKxx3jtI0OOjrYoZsX8bMqHTFy80=;
 b=OSMSt2JT51VO/+w2F+hFzAAkkPU9i6PzJG5nGXOm5IkVeUzxqRIWt9xJdEGNyjSUFz
 9/Pr9iw4NCh4yPy/mTxjpiNt1x9/y0gIGqIDEMFDIoqD/kLq4/Uods2KD5lZSudxXmcV
 TmB6dN5Z38ikOhFm2Gwkmg0YrQypSvNATs48ex4F7h7e3nOzaWsb8FWdF3mIVLfD8WWf
 64AkoI416R5fDIgISA2qRAgYyMqasQpAmedJZS7gQWtl60SwD5jO1m96R1NucDT8yH58
 ZQiIxUbH7WPkS7dT9Vpf29TDJfCmAzxG74bEVqYVb12nfN3TJi0agSRcd0HHtrxhlGD5
 j2Lg==
X-Gm-Message-State: AOAM530mmxJGIdyqt+emBoKyg+TrfJhwha+x6J1odZrG8ih+uiLR5owz
 iP3EqHj9PgHzyXCwLYyludo=
X-Google-Smtp-Source: ABdhPJwIQtkQV/Nw0j8zIa2C2+iCHblYYqg9M6w29nOlQsOIwLitKsspEQaVMSbEIiHcdZW4RrQrpg==
X-Received: by 2002:a17:90b:1993:: with SMTP id
 mv19mr10406755pjb.39.1595429437108; 
 Wed, 22 Jul 2020 07:50:37 -0700 (PDT)
Received: from rahulg-ThinkPad-T450 ([122.175.125.202])
 by smtp.gmail.com with ESMTPSA id j26sm64267pfe.200.2020.07.22.07.50.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jul 2020 07:50:36 -0700 (PDT)
Date: Wed, 22 Jul 2020 20:20:32 +0530
From: Rahul Gottipati <rahul.blr97@gmail.com>
To: mchehab@kernel.org
Subject: [PATCH v3 0/2] General coding style clean-up
Message-ID: <cover.1595429109.git.rahul.blr97@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset fixes several checkpatch.pl warnings in atomisp_ioctl.c
that have been distributed across 2 patches logically.

Rahul Gottipati (2):
  media: atomisp: Fix coding style issue - remove beginning whitespaces
  media: atomisp: Fix coding style issue - correct multiline comments

 .../staging/media/atomisp/pci/atomisp_ioctl.c | 38 +++++++++++--------
 1 file changed, 23 insertions(+), 15 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
