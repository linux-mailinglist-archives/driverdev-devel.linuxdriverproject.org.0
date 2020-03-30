Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B68E9197193
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 03:05:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2117B221F5;
	Mon, 30 Mar 2020 01:05:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QM4UOoZMrdZH; Mon, 30 Mar 2020 01:05:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C37A82153B;
	Mon, 30 Mar 2020 01:05:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A98FF1BF425
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 01:05:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 99F822153E
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 01:05:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WP9rfNO60kqE for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 01:05:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-74.mimecast.com
 (us-smtp-delivery-74.mimecast.com [63.128.21.74])
 by silver.osuosl.org (Postfix) with ESMTPS id 50E242153B
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 01:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585530337;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RuVMi+yzQuqrWt1PfGiMDTX9P2hZ817ws+8wqAp5qk0=;
 b=OFTc6ukA9Eu7/YROBinqV8JEddEk1WV2Oz9uDpKOL0yj+KcrLuMnp6Ztxyt8ANy4QmN59z
 7CdVlf1taT9k7BG31u8hIh3Dy3g23Cg8bv1wZyfGgzW3JsRwVVWbVND6FFM8BlYfL4CEsZ
 g6tjNA9PKTSNl0ACLavVPW/vdNqMJYw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-38-w4fOFj-WPMetl7R3dG9Hmw-1; Sun, 29 Mar 2020 21:05:35 -0400
X-MC-Unique: w4fOFj-WPMetl7R3dG9Hmw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 211B1189F77A;
 Mon, 30 Mar 2020 01:05:34 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.4])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0EED35C1BB;
 Mon, 30 Mar 2020 01:05:31 +0000 (UTC)
Date: Mon, 30 Mar 2020 03:05:26 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Simran Singhal <singhalsimran0@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Add line after
 variable declarations
Message-ID: <20200330030526.7a1a3b9d@elisabeth>
In-Reply-To: <20200325164451.GA17569@simran-Inspiron-5558>
References: <20200325164451.GA17569@simran-Inspiron-5558>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
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
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Simran,

On Wed, 25 Mar 2020 22:14:52 +0530
Simran Singhal <singhalsimran0@gmail.com> wrote:

> Add whiteline after variable declarations to remove the checkpatch.pl
> warning:
> WARNING: Missing a blank line after declarations
> 
> Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>

Sorry for the late review. This patch introduces similar changes to the
other patches you posted to fix checkpatch warnings for rtl8723bs, so I
think they should be posted as a patchset instead.

-- 
Stefano

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
