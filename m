Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48021181E9C
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 18:05:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B5CC8226E9;
	Wed, 11 Mar 2020 17:05:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rOnS11FkcxAY; Wed, 11 Mar 2020 17:05:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8AFBB226CA;
	Wed, 11 Mar 2020 17:04:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D97841BF20F
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 17:04:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D4CAE84974
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 17:04:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dO1i337cpLbS for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 17:04:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 862468496B
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 17:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583946293;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jykx3cJByb3AWCb0WV64LkUlnx3R9Hi3e1lE7ij8ROg=;
 b=FPEs3uw4O44doXsUC8JLqfpAZavLwceIyb7QCzUsjKA+LblJxYS8eKLaRzHA2Kp4hJ+c5D
 kBqL98kYlRc9g4kUj0KUlFtxxAwjkSK0/4ziwWj2kbJCCkhUUnHJ+fFgrxJf1avnu95zmd
 CQCYoLQkgEpkN0VIy4mzaB6naIq5HyE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-451-fylXbBEaNUCy-xrSG-2R-A-1; Wed, 11 Mar 2020 13:04:39 -0400
X-MC-Unique: fylXbBEaNUCy-xrSG-2R-A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 07B451937FC0;
 Wed, 11 Mar 2020 17:04:38 +0000 (UTC)
Received: from elisabeth (ovpn-200-42.brq.redhat.com [10.40.200.42])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7E1755D9C5;
 Wed, 11 Mar 2020 17:04:34 +0000 (UTC)
Date: Wed, 11 Mar 2020 18:04:28 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: rtl8188eu: rtw_mlme: Add
 space around operators
Message-ID: <20200311180428.6489fe9b@elisabeth>
In-Reply-To: <20200311131742.31068-1-shreeya.patel23498@gmail.com>
References: <20200311131742.31068-1-shreeya.patel23498@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
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

On Wed, 11 Mar 2020 18:47:42 +0530
Shreeya Patel <shreeya.patel23498@gmail.com> wrote:

> Add space around operators for improving the code
> readability.
> Reported by checkpatch.pl
> 
> git diff -w shows no difference.
> diff of the .o files before and after the changes shows no difference.
> 
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>

This looks good to me. Further clean-ups here could probably make this
look less messy (there are long lines, unnecessary parentheses that are
rather confusing, especially on that 4/5 factor, "magic" constants that
might make sense to figure out the meaning of, etc.).

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
