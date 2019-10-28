Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCF9E703A
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Oct 2019 12:18:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4FA0885CE1;
	Mon, 28 Oct 2019 11:18:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f1+pVANkKmId; Mon, 28 Oct 2019 11:18:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BF7BC85CBB;
	Mon, 28 Oct 2019 11:17:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1F4211BF417
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 11:17:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 15C0785A8B
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 11:17:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vIXE3n6WDg7y for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 11:17:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 528A884C3C
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 11:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572261472;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=xvGy8lfSyzYT4HF73ZOXkZjMD3C1Ua03UylbZbwvVfY=;
 b=FXsiZmCZWK3WBNnWPL1qY+zVJTT6D5HZRgKqXxX33/3Makkfqth0a3nzxgNltZ+DETG9VW
 FWD40ZlhPVA/MBZME/Nqq+KcAc7KHjsIiYsRijgGH9uUMhuh+MB7xlRYdI8aWKcODynbXU
 EWiNGrCYN9TuWD+Z8QGBdlHdYz85Es4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-360-WNphYuquOhybpm7TOvjMvg-1; Mon, 28 Oct 2019 07:17:49 -0400
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BF407476;
 Mon, 28 Oct 2019 11:17:47 +0000 (UTC)
Received: from shalem.localdomain.com (ovpn-116-64.ams2.redhat.com
 [10.36.116.64])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B4844194B2;
 Mon, 28 Oct 2019 11:17:45 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v17 0/1] staging: Add VirtualBox guest shared folder (vboxsf)
 support
Date: Mon, 28 Oct 2019 12:17:43 +0100
Message-Id: <20191028111744.143863-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: WNphYuquOhybpm7TOvjMvg-1
X-Mimecast-Spam-Score: 0
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
Cc: devel@driverdev.osuosl.org, Christoph Hellwig <hch@infradead.org>,
 David Howells <dhowells@redhat.com>, Hans de Goede <hdegoede@redhat.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

As discussed previously can you please take vboxsf upstream through
drivers/staging?

It has seen many revisions on the fsdevel list, but it seems that the
fsdevel people are to busy to pick it up.

Previous versions of this patch have been reviewed by Al Viro, David Howells
and Christoph Hellwig (all in the Cc) and I believe that the current
version addresses all their review remarks.

Regards,

Hans

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
