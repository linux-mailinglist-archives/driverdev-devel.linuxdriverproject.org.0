Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E79A4182DD8
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 11:34:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D7F9D89417;
	Thu, 12 Mar 2020 10:34:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0A8D2eQv1iJ0; Thu, 12 Mar 2020 10:34:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 30290892AC;
	Thu, 12 Mar 2020 10:34:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8BCEF1BF424
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 10:34:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8875F8645E
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 10:34:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wpNfawXNrz2K for <devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 10:34:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D782286427
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 10:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584009274;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Elhehx58JjnpVasvGfpItQAGWL5MtskgGw42pHcHbh8=;
 b=iEOvz+tiFEXM6pEuQpX4MhS3QUPxuSNMDnbA3buAq83XtQ5yqZuG3obZdOBdxy0pQvlG+4
 j+JXSb87KSwg6OIosK1GTUJ0/TfHaUKuBazdeOzBHwTEH9HdDdmcifPyHPYwBDnbUyNIUb
 AO34OAnXGQyeFsOuVj/8ZNaZS9ijBt4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-273-mZfkIStbNYSgFB-GvJ0d3g-1; Thu, 12 Mar 2020 06:34:30 -0400
X-MC-Unique: mZfkIStbNYSgFB-GvJ0d3g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F178C8017CC;
 Thu, 12 Mar 2020 10:34:28 +0000 (UTC)
Received: from elisabeth (ovpn-200-18.brq.redhat.com [10.40.200.18])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 348FB272A5;
 Thu, 12 Mar 2020 10:34:23 +0000 (UTC)
Date: Thu, 12 Mar 2020 11:34:16 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: rtw_mlme: Remove
 unnecessary conditions
Message-ID: <20200312113416.23d3db5c@elisabeth>
In-Reply-To: <61a6c3d7-6592-b57b-6466-995309302cc2@linux.microsoft.com>
References: <20200311135859.5626-1-shreeya.patel23498@gmail.com>
 <61a6c3d7-6592-b57b-6466-995309302cc2@linux.microsoft.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
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
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 outreachy-kernel@googlegroups.com,
 Shreeya Patel <shreeya.patel23498@gmail.com>, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Lakshmi,

On Wed, 11 Mar 2020 19:42:06 -0700
Lakshmi Ramasubramanian <nramas@linux.microsoft.com> wrote:

> On 3/11/2020 6:58 AM, Shreeya Patel wrote:
> 
> > Remove unnecessary if and else conditions since both are leading to the
> > initialization of "phtpriv->ampdu_enable" with the same value.
> > 
> > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>  
> 
> Stating this based on the patch descriptions I have seen.
> Others, please advise\correct me if I am wrong.
> 
> Patch description should state the problem first[1] and then describe 
> how that is fixed in the given patch.
> 
> For example:
> 
> In the function rtw_update_ht_cap(), phtpriv->ampdu_enable is set to the 
> same value in both if and else statements.
> 
> This patch removes this unnecessary if-else statement.

That's my general preference as well, but I can't find any point in the
"Describe your changes" section of submitting-patches.rst actually
defining the order. I wouldn't imply that from the sequence the steps
are presented in.

In case it's possible to say everything with a single statement as
Shreeya did here, though, I guess that becomes rather a linguistic
factor, and I personally prefer the concise version here.

-- 
Stefano

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
