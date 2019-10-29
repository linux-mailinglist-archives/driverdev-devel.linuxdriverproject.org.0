Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D686E8E6D
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 18:40:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8E35D85A5D;
	Tue, 29 Oct 2019 17:40:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DZWH7Aq-VYm3; Tue, 29 Oct 2019 17:40:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7CB7F85A00;
	Tue, 29 Oct 2019 17:40:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 334421BF255
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 17:40:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2C386867C5
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 17:40:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KpUA3BwayCLd for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 17:40:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 98BEF86689
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 17:40:20 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id 94so10481583oty.8
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 10:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MioPHoHmZiJDkwtAxq/VI9F9tLNtqLzlol+i1u7r8fA=;
 b=oBddjUwbYuu4Lj3WVOqQL7mkyQMLeydeOVhksSLQRwe9Gir8Z4rWNR8jmLZshyqsmr
 /1yiueyFie5VvPJe/Q4QgS42MgJEgn9ZA8J4Ji2+x7vDNVyhxNfnT8zf6RJWL3YYYvlJ
 fXTuOlFGMXUyRIrC8dRLduwQ8vAstTWyOwJgD2Rnshy+cbZJsv17mEk9jozie5x7OCd/
 fak4Ujm7FgA2hP54yAMo6n4SJeh6V/iHkkAIBhcP1cZYOprBLFv3CxQuaiuNv7pBEtqG
 Gr9j9dasGtqQ3pR3heFnkqmYmkoKPRP8qa+NsIwHanpqw9tM2mih8uIb+JX0J6EoVq1o
 8l6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MioPHoHmZiJDkwtAxq/VI9F9tLNtqLzlol+i1u7r8fA=;
 b=qNp7vA7UQTIPKxmWeeJ5ZRRDAzVC9BFVczQLghSNno8AoutkmJCdvaC2bk7usMdbMV
 aYmMDkzd8Q8EydN1g/07h4GwjWNik/VpZvSiT5QcSi0UtXqloOBw7jat/L5xs9BHW4F7
 j/Xyd2Qa3BDVYdwh5QKgK771rYl3OdIVCGMqc/xIlyfI2DifSOvarecD9zZ0pYTPJaF5
 G6UzVay0IeQQIaLpusUgIbdjQGhtPk5a5c89WV6pjY15C7A+EiY6TJc8aeaccZ90oMvW
 YsJLjTKDMAJewmQgegu9teXYxUf69DeDhWsqGPcfSG1e7CxAX/95uBzlqDN8hRP6h4wr
 wjFQ==
X-Gm-Message-State: APjAAAUTqnu06hubrXAFIffYUTtQXNU2dHf9MzjpEYD0xuMTwRkdHLDR
 ABYHXrwShVhS78d2cop6QAcUxme1CuoRgKkawlQ=
X-Google-Smtp-Source: APXvYqyqXgmonX3RdyxFqzASwZjNWMmFfA4UaGDLY5jPXzt3BII9S4iZpIJfcBI2c62BdFfIFo4EbQJ3tsnlssvGTuE=
X-Received: by 2002:a9d:630c:: with SMTP id q12mr7925015otk.332.1572370819510; 
 Tue, 29 Oct 2019 10:40:19 -0700 (PDT)
MIME-Version: 1.0
References: <20191026235214.GA11702@cristiane-Inspiron-5420>
In-Reply-To: <20191026235214.GA11702@cristiane-Inspiron-5420>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Tue, 29 Oct 2019 13:40:08 -0400
Message-ID: <CAGngYiXG1JbFcYLfnKDKYac=Ku+KAkOetPa_MkUCt7xXgJA-XA@mail.gmail.com>
Subject: Re: [PATCH] staging: fieldbus: anybuss: use
 devm_platform_ioremap_resource helper
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Oct 26, 2019 at 7:52 PM Cristiane Naves
<cristianenavescardoso09@gmail.com> wrote:
>
> Use devm_platform_ioremap_resource helper which wraps
> platform_get_resource() and devm_ioremap_resource() together. Issue
> found by coccicheck.
>
> Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> ---
>  drivers/staging/fieldbus/anybuss/arcx-anybus.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>

Reviewed-by: Sven Van Asbroeck <TheSven73@gmail.com>
Tested-by: Sven Van Asbroeck <TheSven73@gmail.com>

Greg has already queued this patch, but the link embedded in
his commit message should point people here.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
