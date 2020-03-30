Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6A61974B2
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 08:48:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC9018838C;
	Mon, 30 Mar 2020 06:48:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7LEwsJnRtwIA; Mon, 30 Mar 2020 06:48:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5705E881D9;
	Mon, 30 Mar 2020 06:48:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BB6081BF42D
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 06:48:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B888F86776
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 06:48:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BDNM8ejEkbE4 for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 06:48:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-74.mimecast.com
 (us-smtp-delivery-74.mimecast.com [63.128.21.74])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2E341865CF
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 06:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585550883;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nyfUsO/T0E/7xzoexsaycHqsJ0KjG21nQpinw4BcqNI=;
 b=EpfD/yRiQVa2SDfw4WV4V3UBX5gTrNxIlmyJgW360A/BBLkw3tMHbeIwWc1bA5/6iwIcgV
 N6rsgEGDLmRMjWp1H7yYL49+5r6vpTddaFIjnikoMaAkEE4PFpcHyDMOVzsa3f4h6gGfqR
 GDm6Lg9/3E3b0tstZYMPlBJaCmDoay8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-54-oot0cUrMMpKseoO5axt2Pg-1; Mon, 30 Mar 2020 02:48:01 -0400
X-MC-Unique: oot0cUrMMpKseoO5axt2Pg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 05523102CE14;
 Mon, 30 Mar 2020 06:48:00 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.4])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EAC7B5E009;
 Mon, 30 Mar 2020 06:47:57 +0000 (UTC)
Date: Mon, 30 Mar 2020 08:47:52 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Simran Singhal <singhalsimran0@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: rtw_cmd:
 Compress lines for immediate return
Message-ID: <20200330084752.7a0557ca@elisabeth>
In-Reply-To: <20200325212253.GA8175@simran-Inspiron-5558>
References: <20200325212253.GA8175@simran-Inspiron-5558>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
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

On Thu, 26 Mar 2020 02:52:53 +0530
Simran Singhal <singhalsimran0@gmail.com> wrote:

> Compress two lines into a single line if immediate return statement is found.
> It also removes variable cmd_obj as it is no longer needed.
> 
> It is done using script Coccinelle.

This should be consistent. What does "it" refer to, now? If you start
with an imperative mode, switching to indicative makes it hard to
follow.

By the way, Coccinelle is not exactly a script. Saying something is
detected by Coccinelle is enough, you don't need to qualify that
further.

-- 
Stefano

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
