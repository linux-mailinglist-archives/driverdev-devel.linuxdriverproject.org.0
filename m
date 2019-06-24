Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6750350AE9
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 14:40:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B126585BDF;
	Mon, 24 Jun 2019 12:40:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1WR4FPSqk28x; Mon, 24 Jun 2019 12:40:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7359B85AE0;
	Mon, 24 Jun 2019 12:40:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F02DC1BF387
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 12:40:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EC008204AD
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 12:40:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RI7nFANHjEXe for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 12:40:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 8A7A120385
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 12:40:28 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id v14so13748149wrr.4
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 05:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SnvjlQhC/7Et11abmkpDCqQIB2gjhtQScdpEp4BPRAk=;
 b=IJwRiOMjSX/w5BWgGlZQZ9bO90jdc0+KM32ORdrRTsrLD4JapA4h+HBSPgOzE2qqe6
 rjOcgVPUk6100JIWkFmgBq1YE43D+bmy5H29HOmj0A6kR4tNNyE/gN9o9MMCDGMFjY7Y
 00eLm0HLt7VZ1FzPAJS45gtqgwB+c1sHOiN2pgEJc6/m3Px5oTiOMT0PooiKOUXEVINY
 2IzqjgpYcmL9xJ6bvC5rAQQ3jsuZSwdB5gEYGupQeSUoRt++PVMNrNg155zKLsxeKhWN
 EdoWXhRu718+gHnmGznw7LK+N2Eq6KEdoyP373WaoqJ+tvbux4pOZNueekR23kR7NHwg
 khTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SnvjlQhC/7Et11abmkpDCqQIB2gjhtQScdpEp4BPRAk=;
 b=HSyaVEKoay2Lm5ks+8yPHN7bpUoKqW0tsdIDV8Mb5UK0C497TECLxlevvWmUIPhlOt
 GY07oKDlfv5M6JIpmkDosnHpZtIu0j8v/a3CX35Ne131qE/kK+artMKE93Lzh8W0i9MW
 coLoBaLjHt5tPAykY+cjcO2AXZ+0bRp0tiIMpY7bruhZmfuy2Y9iTvJMOhi3863+CzpX
 I20GwndA9XaiIMVDXJAVQC0IuyDrDhr30Y89R6PwA25UxqEGHPGADJSQV9Pv1n6XOYUP
 LYn7sbNcI4imFfDEWfUrqdZFAqUzZKuSwPb9Yp14Ux97I2ko4wAgctPu2p9/7ZAMXssp
 PYkw==
X-Gm-Message-State: APjAAAX/ZZJRjWT0CvRdQXVfCK/jELFJO+rC+nurFG91MuZp56kyGAvW
 Z2xc7nd2CYHX5ERpaoYawMG7DPgDbnwRewn2dTY=
X-Google-Smtp-Source: APXvYqzaqzwih3tQFkvlRDCwHwFzZ6erk2/fNTqHXRJcb+ekQD6iTm9/Z1RQTcchouCyONjVxR78nifgjxj/BHbCyBg=
X-Received: by 2002:adf:b1ce:: with SMTP id r14mr47843265wra.0.1561380026930; 
 Mon, 24 Jun 2019 05:40:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190618013757.22401-1-ming.lei@redhat.com>
 <yq11rzqzacx.fsf@oracle.com>
 <3df71d64-78fb-c6fc-f456-a0b626abff3b@acm.org> <yq1wohhs62v.fsf@oracle.com>
In-Reply-To: <yq1wohhs62v.fsf@oracle.com>
From: Ming Lei <tom.leiming@gmail.com>
Date: Mon, 24 Jun 2019 20:40:15 +0800
Message-ID: <CACVXFVM2ZiSwqy9QpE2A2VDWY5-dny-H=Lw2J0bEh7zuA5aj5Q@mail.gmail.com>
Subject: Re: [PATCH V5 00/16] use sg helper to operate scatterlist
To: "Martin K. Petersen" <martin.petersen@oracle.com>
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
Cc: Michael Schmitz <schmitzmic@gmail.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Hannes Reinecke <hare@suse.com>, Benjamin Block <bblock@linux.ibm.com>,
 Bart Van Assche <bvanassche@acm.org>,
 Linux SCSI List <linux-scsi@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb <linux-usb@vger.kernel.org>, James Smart <james.smart@broadcom.com>,
 "Ewan D . Milne" <emilne@redhat.com>, Ming Lei <ming.lei@redhat.com>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Brian King <brking@us.ibm.com>, Finn Thain <fthain@telegraphics.com.au>,
 "Juergen E . Fischer" <fischer@norbit.de>, Jim Gill <jgill@vmware.com>,
 Christoph Hellwig <hch@lst.de>, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Martin,

On Thu, Jun 20, 2019 at 3:57 AM Martin K. Petersen
<martin.petersen@oracle.com> wrote:
>
>
> Bart,
>
> > Do you perhaps plan to push out these patches at a later time? It
> > seems like that branch has not been updated recently:
>
> I had a test failure on this end, that's why I didn't push. Appears to
> be hardware-related, though. Still looking into it.

Today I found the whole patchset disappears from 5.3/scsi-queue, seems
something is wrong?


Thanks,
Ming Lei
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
