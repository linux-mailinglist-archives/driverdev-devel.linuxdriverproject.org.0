Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5D218ED7E
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Mar 2020 01:47:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 02C4485F6A;
	Mon, 23 Mar 2020 00:47:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sUOGvHAHzrFR; Mon, 23 Mar 2020 00:47:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 346A585F37;
	Mon, 23 Mar 2020 00:47:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D042E1BF95F
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 00:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CCB0685F44
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 00:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6qy_rFE7SRgL for <devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 00:47:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-74.mimecast.com
 (us-smtp-delivery-74.mimecast.com [216.205.24.74])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 920EC85F37
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 00:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584924451;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ig4doA85riL2XtPeQfs/qUQldiVkDlW3JAidx8gyjPc=;
 b=VtHop1z3ZJIIM0qYQ9f1//qKu7U7DURN8VJ/35WitRoeK3mAuZo0soMhixsCAPm2aG9Vwr
 m8I1xewoItJu+xeoqOIRF4Ew3aaJ3LqxIbEyQyHeKcVVfxrB4bGI6LBQBo489fZvN6YT1Z
 FQqGwX+tDUQhMWoi3yLOIA0ljNEk+ws=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-307-wd9H0AT3Pfu9Z28AQ4ibbQ-1; Sun, 22 Mar 2020 20:47:29 -0400
X-MC-Unique: wd9H0AT3Pfu9Z28AQ4ibbQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 48259189D6C3;
 Mon, 23 Mar 2020 00:47:27 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E17D25C1B2;
 Mon, 23 Mar 2020 00:47:24 +0000 (UTC)
Date: Mon, 23 Mar 2020 01:47:18 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Simran Singhal <singhalsimran0@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: kpc2000: Removing multiple
 blank lines
Message-ID: <20200323014718.461a6bbe@elisabeth>
In-Reply-To: <20200321140430.GA18933@simran-Inspiron-5558>
References: <20200321140430.GA18933@simran-Inspiron-5558>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 21 Mar 2020 19:34:31 +0530
Simran Singhal <singhalsimran0@gmail.com> wrote:

> This patch fixes the checkpatch warning by removing multiple blank
> lines.

Actually, you're removing just one. Can you please re-post fixing the
description? Mind that it's going to be a "v2", that is, the second
version of this patch. Please see recent examples on this list about
that.

-- 
Stefano

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
