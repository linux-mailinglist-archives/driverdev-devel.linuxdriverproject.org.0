Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0167A230C79
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 16:33:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 11A708800D;
	Tue, 28 Jul 2020 14:33:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gGHh1FeOIFAP; Tue, 28 Jul 2020 14:33:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A56C87F72;
	Tue, 28 Jul 2020 14:33:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ACB8C1BF284
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 14:33:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A6B2F860D2
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 14:33:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F-lDxDCjkw1Q for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 14:33:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0603A85F75
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 14:33:00 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id r12so18472837wrj.13
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 07:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KG14YYFB/5hmiYqY3y7prb50ionW+VhrVqwajJY/oMA=;
 b=qDu/OJTY2EqMbfxsbQOMuWANxz/18xkvO8QbQtHgXimasFuuVnDdksCFzIFyEOFIWT
 CvQBNO1r7A/i3liCA60v0Cgc1kE8WahoslUOti7PU+q3YDCW6X35doHF0bLbMeW3klTQ
 qCCmwZBJpwb3NnosZh074j7rVd1ZM82rVFyVx0dBF2gb5fFWQ6hKw7Ssth5dpwY21yh+
 8JaUr9Ozbw5mw86AIOah30JokIZ8BGWkAHPm+ubhJrhgaSyA0xUFcTR472/2smn7Y2V3
 MRmyjFREquvXuNtJntSosKo4aguTxkWJIpSTI5JEUclaifgFT43uF7WT3InnINzO2vbH
 ACQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KG14YYFB/5hmiYqY3y7prb50ionW+VhrVqwajJY/oMA=;
 b=YlU9DINIDoITX6RVildyDsyZyP4Qm70c63KmkKEXOgsnZch0sPU4s2AuQsrJWwqyGw
 z75ShEW5M7v7uW8rlhOBev61larK6gRgnz2Lr0JxAUqtD7lFFt7v2hoNsxRsMuCosio/
 yBgcD5kUzlmsKB3IQMlSClNHzdzmCfVn/eaSCaZie1lFw6Kgn3zZ1NapU0KLiZQhlgFW
 627Ied5EJeL/2N2/6LtiQONNEUXFJny4LUx2JlzFH2vShxSIT2XstipYYhhE6xBgL6fU
 w/vgfXMglAUHkiA+1iz2wGt4PrQeOiyB2FtumQmPjUkdneYG9k+of9W2Vg0qfJpnWrrr
 5j0w==
X-Gm-Message-State: AOAM530kO48GWqcSA9EFLVvYHkOWeo1WZNlNPbnSMW/i4zr7AFgx5UDO
 i0vFanwJ91zQYC0Qld9mWng=
X-Google-Smtp-Source: ABdhPJzCNICSkIMi1Qiv3e9TRUfS1ln/VY1rlb7DayrDsfie3bkQyciqnICFKyzKt+lZdEcyaxCZ4g==
X-Received: by 2002:adf:a488:: with SMTP id g8mr18774512wrb.221.1595946778379; 
 Tue, 28 Jul 2020 07:32:58 -0700 (PDT)
Received: from localhost.localdomain (112.red-81-32-35.dynamicip.rima-tde.net.
 [81.32.35.112])
 by smtp.gmail.com with ESMTPSA id 78sm4802174wma.31.2020.07.28.07.32.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jul 2020 07:32:57 -0700 (PDT)
From: Juan Antonio Aldea-Armenteros <juant.aldea@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] media: atomisp-mt9m114: replace fixed function names
Date: Tue, 28 Jul 2020 16:32:21 +0200
Message-Id: <20200728143219.76269-1-juant.aldea@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200727132042.GE1913@kadam>
References: <20200727132042.GE1913@kadam>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Juan Antonio Aldea-Armenteros <juant.aldea@gmail.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

No I didn't intent to. I have sent another version.

Thank you very much, Dan.

Juan Antonio Aldea-Armenteros

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
