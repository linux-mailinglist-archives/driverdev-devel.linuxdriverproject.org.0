Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CFFB3140
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Sep 2019 19:50:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 599A7877E1;
	Sun, 15 Sep 2019 17:50:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zp5PzOsjiEKZ; Sun, 15 Sep 2019 17:50:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7755C87765;
	Sun, 15 Sep 2019 17:50:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1288D1BF299
 for <devel@linuxdriverproject.org>; Sun, 15 Sep 2019 17:50:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0B71B85025
 for <devel@linuxdriverproject.org>; Sun, 15 Sep 2019 17:50:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id auQ49w-_cVwA for <devel@linuxdriverproject.org>;
 Sun, 15 Sep 2019 17:50:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B540A8501A
 for <devel@driverdev.osuosl.org>; Sun, 15 Sep 2019 17:50:01 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id a2so2195061pfo.10
 for <devel@driverdev.osuosl.org>; Sun, 15 Sep 2019 10:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+FT6t6tAgH2CWVt57WKWzQSYmQRrb9LBfWstrY+JJng=;
 b=nrm2wxkoyTJfutAKqZznB9wT9McfPgYJgWH5h1qWlOVl9xDWz+4MLH7RQKX1YY/9wH
 QnM/PA7CaQCqiT/qoaJViSSP4UqiGGPH0oEMBtYTQTtFnd3N5OdLHrtzkF3KcMY3X9CJ
 f0pnJhBQNNbBc78/UoWFyfS1WXCejvAi+LmYRQi+zyB1SczOQTRDSrofYP2WPHrV0iaW
 O+snJtRQjvUCGXx+Ocb9BuOlnB8Dg9XMau7caOcUINLPHyIabFJ1/4FkYttSougQpWkU
 IY9kj02ubIlWnI7iUEKC/AZ+Acdk1EaWESsdMpBVga7w0m+iG5yi4xKmjvL9idEggeFo
 nfBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+FT6t6tAgH2CWVt57WKWzQSYmQRrb9LBfWstrY+JJng=;
 b=ZMzh7DTdmvaYyuEIqBe0vpAZmND+Y1tveywgO636//b5Rsxmobl1x86OB29cA7YExL
 v6bj0+y8USELx1ZdiUyB9Y8ET8/Y973xLavKCtGhNM3xZFAmHIys3LKGBrwYFDVMnlgB
 T3wdeK/E1sKmjsPBvRP/3qOmWI0FOdQCo5A09IH8b/C24TbRGQLy8LbD/MYOSzylYrqm
 movZupABQXH8IQbkV6JZlj3hzBoyumg1/E0TGbcS8Ua6J2+isaMddzRi0eWcgmze9PvJ
 L6rMHnr4SUAprd80W7SzpGzUcGfVLLnOvmQ0bFliblBKlGYL0CJ21HuXjsnKJ2tQvpzO
 3c5w==
X-Gm-Message-State: APjAAAXUjSB2O0gO9UFi7Ec+VmnF3b/o/Aqt72DQENKEW6JdykNk3HJM
 Cdbc+cixF1vle7m8zo5w6vw=
X-Google-Smtp-Source: APXvYqxkFf79p8GWOY6U+WCEFFhYXhudX7QAcO6HQGVHzKHtn9RAgVMjxoAfD1HhlcB+8b58eYV6Lg==
X-Received: by 2002:a63:487:: with SMTP id 129mr26134434pge.14.1568569801258; 
 Sun, 15 Sep 2019 10:50:01 -0700 (PDT)
Received: from SARKAR ([1.186.12.73])
 by smtp.gmail.com with ESMTPSA id c1sm60759116pfb.135.2019.09.15.10.49.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Sep 2019 10:50:00 -0700 (PDT)
Date: Sun, 15 Sep 2019 23:19:54 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH] staging: iio: ADIS16240: Remove unused include
Message-ID: <20190915174954.GA8247@SARKAR>
References: <20190913203627.GA1320@SARKAR> <20190915105300.12cc105f@archlinux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190915105300.12cc105f@archlinux>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, Lars-Peter Clausen <lars@metafoo.de>,
 Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 Rodrigo Carvalho <rodrigorsdc@gmail.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 15, 2019 at 10:53:00AM +0100, Jonathan Cameron wrote:
> On Sat, 14 Sep 2019 02:06:27 +0530
> Rohit Sarkar <rohitsarkar5398@gmail.com> wrote:
> 
> > Bcc: 
> > Subject: [PATCH] staging: iio: adis16240: remove unused include
> > Reply-To: 
> Something odd happened here with patch formatting.  I fixed it up and
> applied to the togreg branch of iio.git and pushed out as testing
> for the autobuilders to play with it.
> 
> Thanks,
> 
> Jonathan
> 

That's my bad, must have messed up while copying over the recipients
from another thread.

Thanks,
Rohit
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
