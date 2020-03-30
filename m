Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5758A197191
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 03:05:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1FBDC22253;
	Mon, 30 Mar 2020 01:05:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F-D2jwYwt8GG; Mon, 30 Mar 2020 01:05:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5F56521541;
	Mon, 30 Mar 2020 01:05:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 681481BF425
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 01:05:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 62524864AA
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 01:05:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PSrytjeyhCAo for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 01:05:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-74.mimecast.com
 (us-smtp-delivery-74.mimecast.com [216.205.24.74])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0CF958647E
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 01:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585530322;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mDJV5yf5sqTq7BBH6Thf8EcLPKuxR3i7R8Gj+S8lYwI=;
 b=HehkEEBXxs/UVoVpXTSbmN5ZDZgP+IBOrQwnTbidmYwlsqX9FuuXNiKwP9GgVlo+nhi7UZ
 Jwhqwda9C+1x9lZ7bbXtd3YhWgpvmavbGM3vNbfCjZN0uxI2OXjC6KcxCnJKHyYATHf4nh
 PuE3C+unznIcF8KLo0NKaCE4IB+GiO4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-355-0nIyAOliOYObPc1tDlI5xA-1; Sun, 29 Mar 2020 21:05:19 -0400
X-MC-Unique: 0nIyAOliOYObPc1tDlI5xA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B8181477;
 Mon, 30 Mar 2020 01:05:17 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.4])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2CA7597AF7;
 Mon, 30 Mar 2020 01:05:13 +0000 (UTC)
Date: Mon, 30 Mar 2020 03:05:09 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8188eu: hal: Add
 space around operators
Message-ID: <20200330030509.59cc78e7@elisabeth>
In-Reply-To: <20200325160142.3698-1-shreeya.patel23498@gmail.com>
References: <20200325160142.3698-1-shreeya.patel23498@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
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
Cc: devel@driverdev.osuosl.org, daniel.baluta@gmail.com,
 outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, hverkuil@xs4all.nl, nramas@linux.microsoft.com,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 25 Mar 2020 21:31:42 +0530
Shreeya Patel <shreeya.patel23498@gmail.com> wrote:

> Add space around operators for improving the code
> readability.
> Reported by checkpatch.pl
> 
> git diff -w shows no difference.
> diff of the .o files before and after the changes shows no difference.
> 
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
