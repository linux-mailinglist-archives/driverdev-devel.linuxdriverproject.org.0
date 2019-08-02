Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B93802A1
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 00:19:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 79E1520426;
	Fri,  2 Aug 2019 22:19:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vZ7mov+xlF6s; Fri,  2 Aug 2019 22:19:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 205B72039F;
	Fri,  2 Aug 2019 22:19:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7FAF71BF831
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 22:19:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 79EB186031
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 22:19:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l2_4Frn_hlNB for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 22:19:24 +0000 (UTC)
X-Greylist: delayed 00:18:56 by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E6E1886027
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 22:19:23 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id a127so57899225oii.2
 for <devel@driverdev.osuosl.org>; Fri, 02 Aug 2019 15:19:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wyeLKPzC0XuP8gjAGSTKzaHtBOr+XkQRHretmBzwq5w=;
 b=GaMOsF13xxb3cD8xzf2OmnaaSbtiMzON8fo3xA3vPmsrWVsWsYdLUNrKFxJcx2GOJ0
 Hf+j9m5qaI0cA9ItiutImpnjd17gBDapDOyNUknduvJ0s3uZKttckWEwh6/TaqPb1NuK
 MC+xNZlOytC+TjDD36ADL1bINhIbgY2uLhUPpElNVWEw+YsHmuamej7D0mP74+Srk496
 60N4HTArbE3YzdC5S6kdKMKfqpZBgOD9OPX17vjm7e6Iini9LdUGlPOSWf1LmHLdO+RB
 9xM1m8xJw4J33uPtbtqirl5MhIHcmyCjTqI0OjmGrLbDCPflVJ9EY6JisOEy/teLwzpB
 5siQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wyeLKPzC0XuP8gjAGSTKzaHtBOr+XkQRHretmBzwq5w=;
 b=G8+GTwSyZk1/HA3JlzRxz3PbzynB8IN3R1RdPQCX66qULRZ4LK0N/dZWhYmOURHkLy
 OvJ26RqNS9qIE7hPKFpVb9v1HwiGECJ7Nx0Mu+Xymrxlh50fBVZd0gylcjjrHdR8GG3b
 BUgXgMZ62npxQIJec06RjDHIo+RffOaWu6srE9hdv6+RUdis/ZQIMZ5kJWvAbd0XWjQ1
 n9CAoFR2HJEEt5mxnkw9EhcK0lQxnxKPmyMZSmC0HEjhA1+QnQ9Eam0392dDKvhlTxhD
 Ys3dL24uke/GqgNm4sUqbCyCkSE+iOVwFyYOfg1bc/SlnBBpfaHMG8IMtWOVYGFjykbc
 yvEQ==
X-Gm-Message-State: APjAAAWy/+cUpjoXrgrJX1ybsBcenUucBo+jy8CiZWDytBadjWtYlh6B
 aqk32SbUlaV59vWFsiRk6plVCy+Y
X-Google-Smtp-Source: APXvYqwbHMg3jNoCFZHog7Hxf1IYqhk4HkeR6DqQNTGvD37LG2dD5fYELrYf9ed2PrIB1VZBXPindw==
X-Received: by 2002:a63:3147:: with SMTP id x68mr63386647pgx.212.1564782895104; 
 Fri, 02 Aug 2019 14:54:55 -0700 (PDT)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
 by smtp.gmail.com with ESMTPSA id m16sm75782068pfd.127.2019.08.02.14.54.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 14:54:54 -0700 (PDT)
Date: Fri, 2 Aug 2019 14:54:48 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Ricardo Bruno Lopes da Silva <ricardo6142@gmail.com>
Subject: Re: [PATCH] isdn: hysdn: fix code style error from checkpatch
Message-ID: <20190802145448.0bcd5374@hermes.lan>
In-Reply-To: <20190802195017.27845-1-ricardo6142@gmail.com>
References: <20190802195017.27845-1-ricardo6142@gmail.com>
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
Cc: devel@driverdev.osuosl.org, isdn@linux-pingi.de, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri,  2 Aug 2019 19:50:17 +0000
Ricardo Bruno Lopes da Silva <ricardo6142@gmail.com> wrote:

> Fix error bellow from checkpatch.
> 
> WARNING: Block comments use * on subsequent lines
> +/***********************************************************
> +
> 
> Signed-off-by: Ricardo Bruno Lopes da Silva <ricardo6142@gmail.com>

Read the TODO, these drivers are scheduled for removal, so changes
are not helpful at this time.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
