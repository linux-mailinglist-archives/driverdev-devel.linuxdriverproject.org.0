Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA461974B0
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 08:47:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C166B88377;
	Mon, 30 Mar 2020 06:47:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MZAsuCtmifWS; Mon, 30 Mar 2020 06:47:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 373B68817F;
	Mon, 30 Mar 2020 06:47:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2A9501BF42D
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 06:47:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2041A86776
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 06:47:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gRAeHl8ku43q for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 06:47:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-74.mimecast.com
 (us-smtp-delivery-74.mimecast.com [63.128.21.74])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6FC81865CF
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 06:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585550865;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8efMudaMe4SXKlisr5XoKCgiji5DGX+MNsa2rB9kjG8=;
 b=eh1sDu08ajbQDobrXtOjcFATtYLb82UKNAf/sdn6oAmwwI4GiQr6BjBZlKM19FX7kWhi3q
 zBs8OmMkCesV1Su8nX6/oe45RqQJkVgAZqDPnaht14oCWdmEnwagJXafElW8R1RzqqIeRa
 tKcm5Obz9PsY6ALOhA8raB9bjZD4x20=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-104-rQLyBsIWN9We9sa-h3OYhw-1; Mon, 30 Mar 2020 02:47:43 -0400
X-MC-Unique: rQLyBsIWN9We9sa-h3OYhw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 034F7107ACC9;
 Mon, 30 Mar 2020 06:47:42 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.4])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D2F165DA76;
 Mon, 30 Mar 2020 06:47:39 +0000 (UTC)
Date: Mon, 30 Mar 2020 08:47:34 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Simran Singhal <singhalsimran0@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: rtw_efuse:
 Compress lines for immediate return
Message-ID: <20200330084734.479420cd@elisabeth>
In-Reply-To: <20200325205418.GA29149@simran-Inspiron-5558>
References: <20200325205418.GA29149@simran-Inspiron-5558>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 26 Mar 2020 02:24:18 +0530
Simran Singhal <singhalsimran0@gmail.com> wrote:

> Compress two lines into a single line if immediate return statement is found.

Same as your patches for issues reported by checkpatch, I think you
should post these ones as a patchset.

-- 
Stefano

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
