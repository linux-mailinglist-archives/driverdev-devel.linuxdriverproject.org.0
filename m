Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E087D253B5
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 17:20:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7D7B927BC0;
	Tue, 21 May 2019 15:20:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aAqjqPo+HGFq; Tue, 21 May 2019 15:20:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EB5D6268C0;
	Tue, 21 May 2019 15:20:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BB4971BF4DA
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 15:20:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B69C885FF3
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 15:20:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id glZRxjXNxBBf for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 15:20:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D06A786008
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 15:20:10 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id j49so16631745otc.13
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 08:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A+8divkK1RJk885MhoBadHe7V0Gz6HXofpqqERzrJNA=;
 b=f6Tfhl718TNjdi17fhG7uFrVhiNMtt0eFnN88/vWM/iqLcrXdf0U78Tcw2BR4iQWh8
 BpO6NpBCYB8c7OHdo47JDGicRRFwC5/faPsW3qq7jO+OUHOxI/qbZhr00c10svQ7dwP7
 O+Wm4TvaOB0rOEgPyHxOKrauegQSRzVft+LE5BPSDPnwgfo7LybMTjqFdxQwlh1jw2pL
 067JIheUQAjveLhU0yumxM018uQkXYZiy8mb4De7QOb9L3SEYr2fAK3FhlsN7+wCGKqV
 XMKmaEaXTxZSutXnkwjOSQgeTSIl81ZRwkYcEcx3efybOKztMt+f8gRWrJUH60qGMMN5
 j8KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A+8divkK1RJk885MhoBadHe7V0Gz6HXofpqqERzrJNA=;
 b=qJLRDvDsy7eFpkZgwsHM5dDWyX4XVZOiCeRKHHm9398Rd7qQaiZZuKLoBcJ58gcCLz
 a3Bs1sQFdfKwGSFlQAv1phXK0FMgzL1D9DNYd/uSUqum11rm9QFJCx669znPmRr2PX/o
 dnwtSTWj0nEtF7CsW6UgsFeOQ93j9Ymx3OJIqUPTm/+W9n04wyH3cnkg3Hh5dD/611Pb
 7lk0732KJD6Xw6n+goriJBHCbrzZB1XRwmbD4Y8aV3rICQT59vu1he8gDrcx8kmjMeWR
 K4Vvcnt5U5LZYOaPg6CcklI4d+j6wZ1Gyof+TEu+cTeePzflIdKGDZdnldkFRgy1Z/jG
 8hnA==
X-Gm-Message-State: APjAAAW5pvNQcVpzdl4n93zAEyLCiWtFo6xuLcay6oR7IGn9/kV8BXyg
 QNz7UYgbN3NOfsSud2Qz+jAx05hQSnZHbcedKxE=
X-Google-Smtp-Source: APXvYqyNDKJ6GMe6x1bgirllN226UDaCKuo/V2cXOkEm0n2JojXasrFXk9uTVsfXh7oaX/38x3TpAHQkNYNRZQ6UWLk=
X-Received: by 2002:a05:6830:209a:: with SMTP id
 y26mr19927286otq.232.1558452009981; 
 Tue, 21 May 2019 08:20:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190521145116.24378-1-TheSven73@gmail.com>
 <20190521151059.GM31203@kadam>
In-Reply-To: <20190521151059.GM31203@kadam>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Tue, 21 May 2019 11:19:59 -0400
Message-ID: <CAGngYiXLN-oT_b9d1kRyBrrFMALhKO-KnuwXB0MjVq0NFc01Xw@mail.gmail.com>
Subject: Re: [PATCH] staging: fieldbus: anybuss: force address space conversion
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 21, 2019 at 11:13 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> There is no need to use __force.  Just:
>
>         void __iomem *base = (void __iomem *)context;
>
> For the rest as well.

Yes, that appears to work for 'void *' -> __iomem, but not the other way around:

+       return devm_regmap_init(dev, NULL, (void *)base, &regmap_cfg);

sparse generates:
drivers/staging/fieldbus/anybuss/arcx-anybus.c:156:16: warning: cast
removes address space of expression

Would it be a ok solution to use __force in this instance only?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
