Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A86D25626
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 18:54:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3897F86B78;
	Tue, 21 May 2019 16:54:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tu61NjI3cJ4m; Tue, 21 May 2019 16:54:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E332C868CA;
	Tue, 21 May 2019 16:54:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2ED1A1BF29D
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 16:53:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2BD2687AFF
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 16:53:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2BMAXVBYHXHM for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 16:53:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AB5C687AFE
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 16:53:57 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id l25so8623388otp.8
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 09:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3f7mHmRjk7fLWcBIYMRJs7xMo0wDV6TbfEsmzCjNuX4=;
 b=IexpasiRg+Bb7Na8aIfMp4uMnKTIcQpKXn6m8U8PPT7pxafFono+NZVqxQql/np9E2
 uVV6nA0U7vA3OW1s18+qiJxODFopSpD0GbWPjQHmofSJH0LBwukRLM1K/3IGMaPrbbo9
 +Us7mESrsAZ/WC75Jjfk330nEuV/GmPChlwqBs0SCg3bo6kg+FcxWkpySkBlBwqrarfE
 dsqzHSmpv+WAUeSCfdOJctkthdw/8BOS2rUHZDSgrTBdQSa4I/7lOvnw5ZZucmu2QbTT
 hy749+PCiUxMl5TUHJX7V2sM/A0O2MKc5BSpocUfJcbKSf/Jz6t8qMcX9Kd/JcIWbK34
 UeWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3f7mHmRjk7fLWcBIYMRJs7xMo0wDV6TbfEsmzCjNuX4=;
 b=tIBPXm4VRAFInUTj2X55Pqd9j+2UwDguVTqicg4D2hUxIzAWKsW6uJ40Vak1Ahpi5b
 RuoBPcExCVaEuKOGmuo3wcJa/6xXSv20sdHjwYE9nrRWwbRQ8Qal+BGVwCabZg+Nd6cX
 9f7o+apX6kC/tMDP2ZM3bFvtZaiZPukDzyNZ4QGHXBftOZbaS6n+Ry7TxVuzZGRR9zh9
 hJx2d1Pa6eRtFMK+9dXYGc1qDCrdY6YE9DH2vLBgKa70lo/49/6OpUeQwLh6m+aqqYWu
 UdGMSHu06Nm2GBaWBq2NUTrUipkJuEahxUOg4QSdAuCgB03Bs/AtkfyzkA1FvLw3xygo
 TzgQ==
X-Gm-Message-State: APjAAAWs2IVGcrMS7JAkywZXkql76njwVjI3a10iSFE77hlgDhG5VI05
 DnCkfFOBuIqZQQ5SzzMIp+DXuc/c+Bn8A89Hkquzbg==
X-Google-Smtp-Source: APXvYqxWCvUByFG2A9trYQwGtggkpf6EvuOWMVhfCbHUQTZERoRJIl5MIYzVfUQfM1QDA7Nzr1VvoJ74I8AXO/wfTuU=
X-Received: by 2002:a9d:68c5:: with SMTP id i5mr5230452oto.224.1558457636794; 
 Tue, 21 May 2019 09:53:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190521145116.24378-1-TheSven73@gmail.com>
 <20190521151059.GM31203@kadam>
 <CAGngYiXLN-oT_b9d1kRyBrrFMALhKO-KnuwXB0MjVq0NFc01Xw@mail.gmail.com>
 <20190521154241.GB15818@kroah.com>
 <CAGngYiU_iK5=swD_DA5PcOeYFT0zTrdQ+30Db0YrahuEukEP_A@mail.gmail.com>
 <20190521162451.GA19139@kroah.com>
In-Reply-To: <20190521162451.GA19139@kroah.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Tue, 21 May 2019 12:53:45 -0400
Message-ID: <CAGngYiUSgtAXL+utPHz79OEbvrL6_TD9Wfkc6396E9vwQHCFKw@mail.gmail.com>
Subject: Re: [PATCH] staging: fieldbus: anybuss: force address space conversion
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 21, 2019 at 12:24 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> what is so odd about this code that makes you have to jump through
> strange hoops that no other driver has to?
>

Basically because it creates a regmap which accesses __iomem memory,
instead of i2c/spi.

This was done because future hardware in the company's pipeline will access
device register space through spi, instead of through a parallel memory bus.

The lower driver just has to create the appropriate regmap, __iomem or
spi, and pass it to the
upper driver, which does not have to know about the exact way the h/w
gets accessed.
So regmap is used as a hw abstraction layer.

The issue here is that a regmap context is a 'void *' yet the parallel
memory base pointer
is 'void __iomem *'. And so the two are incompatible.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
