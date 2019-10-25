Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46091E4F11
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Oct 2019 16:28:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 952D987B47;
	Fri, 25 Oct 2019 14:28:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q+suXTJIjE52; Fri, 25 Oct 2019 14:28:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BCDDB87B0A;
	Fri, 25 Oct 2019 14:28:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3C76B1BF337
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 14:28:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 38E8987476
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 14:28:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fzOS+uHw1tut for <devel@linuxdriverproject.org>;
 Fri, 25 Oct 2019 14:28:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A8802864FB
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 14:28:46 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id p4so2573136wrm.8
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 07:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0lU4vBZ00lsZOGR37S7Y41s23WGWn3vWrl2tK4zXVT4=;
 b=FRyVA/kppsnK9aDVKI19li9Up5yBufEWGsaMRrbzNqAdVN0Pxy+nXiU8vTXFGK/P/e
 nF7MumzJx/Z607woRf65WoIBgRny3FnE9Kkhy/Z2ke7J90aD7SE5wBIJ674ICi7FEUvF
 wqJw/a10wiqU+bqUYJfPtsofmfqfBgsK6R6YhsGVb/n1NM0D2pfqZacOM4oYIotTYY1q
 gvC/tBc0E1muwXXuvboSMbF7uV54wopD6ZaKZiBqzKQAhGtSh2Pnx3E+rzzgzNMeMFte
 kqQvKg6PJ7N7fkxJa7Wraj/57XEimHE3914RA77cOpooEhpdL8dTwYrPsAbKNpHE10Lm
 wTJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0lU4vBZ00lsZOGR37S7Y41s23WGWn3vWrl2tK4zXVT4=;
 b=YSE3JZj12VCmRhUfz9Kt74Kb88NMTpka4uE4eMANPvaCww1xcn9a63BYnz5ixhvgBy
 qg6juZZG+ZHI4Thpazn5Zz/QHr7h9Jqki5DwOVoCx4Ddi6R4InxCpjpSsDaElW9BsnD4
 0v6sjAOAHK4LmGp4HAyj5XeU22ySnoDzqnF1tk7LJhorIRINtrZyzxIS4cu1SUrMBKSX
 2KHDePTbWDlEeyPubWtK5fSf/hAMFypRmMktDnNo28pPLZ7d0nA3duH2meYVXEDFjOe/
 +tJbGlMva/+1hg8KTccdyG6BQZejAJAD1tBEEnLlAJDEztF26c+ljroxQTbPI9ABOwHn
 olXg==
X-Gm-Message-State: APjAAAXs+qtSPSvscnCGwanFa/Vl+kn1/mxgG5HJRw1Mrfa5UwLTYiy6
 n1WQNNgUxh64GOkfwKlgcXz3A6CQdADIdQ==
X-Google-Smtp-Source: APXvYqyKe3NGWagSOC0ejXtsTs8OGvjSR/esTy0xnHYnHPSF5tQir+GSkLkz8VE581dzDdt3nsxkbA==
X-Received: by 2002:a05:6000:44:: with SMTP id
 k4mr3450806wrx.170.1572013725170; 
 Fri, 25 Oct 2019 07:28:45 -0700 (PDT)
Received: from sivanov-pc ([92.247.20.94])
 by smtp.gmail.com with ESMTPSA id o70sm2620480wme.29.2019.10.25.07.28.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 25 Oct 2019 07:28:44 -0700 (PDT)
Date: Fri, 25 Oct 2019 17:28:42 +0300
From: Samuil Ivanov <samuil.ivanovbg@gmail.com>
To: dan.carpenter@oracle.com, gregkh@linuxfoundation.org
Subject: Re: [PATCH 1/3] Staging: qlge: Rename prefix of a function to qlge
Message-ID: <20191025142842.GA10016@sivanov-pc>
References: <20191024212941.28149-1-samuil.ivanovbg@gmail.com>
 <20191024212941.28149-2-samuil.ivanovbg@gmail.com>
 <20191025101705.GM24678@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025101705.GM24678@kadam>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 manishc@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 25, 2019 at 01:19:05PM +0300, Dan Carpenter wrote:
> On Fri, Oct 25, 2019 at 12:29:39AM +0300, Samuil Ivanov wrote:
> > diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
> > index 6ec7e3ce3863..e9f1363c5bf2 100644
> > --- a/drivers/staging/qlge/qlge.h
> > +++ b/drivers/staging/qlge/qlge.h
> > @@ -2262,7 +2262,7 @@ int ql_write_mpi_reg(struct ql_adapter *qdev, u32 reg, u32 data);
> >  int ql_unpause_mpi_risc(struct ql_adapter *qdev);
> >  int ql_pause_mpi_risc(struct ql_adapter *qdev);
> >  int ql_hard_reset_mpi_risc(struct ql_adapter *qdev);
> > -int ql_soft_reset_mpi_risc(struct ql_adapter *qdev);
> > +int qlge_soft_reset_mpi_risc(struct ql_adapter *qdev);
> 
> The patch series doesn't change all the functions so now it's hodge
> podge.
> 
> >  int ql_dump_risc_ram_area(struct ql_adapter *qdev, void *buf, u32 ram_addr,
> >  			  int word_count);
> >  int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump);
> > diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> > index 019b7e6a1b7a..df5344e113ca 100644
> > --- a/drivers/staging/qlge/qlge_dbg.c
> > +++ b/drivers/staging/qlge/qlge_dbg.c
> > @@ -1312,7 +1312,7 @@ void ql_get_dump(struct ql_adapter *qdev, void *buff)
> >  
> >  	if (!test_bit(QL_FRC_COREDUMP, &qdev->flags)) {
> >  		if (!ql_core_dump(qdev, buff))
> > -			ql_soft_reset_mpi_risc(qdev);
> > +			qlge_soft_reset_mpi_risc(qdev);
> >  		else
> >  			netif_err(qdev, drv, qdev->ndev, "coredump failed!\n");
> >  	} else {
> > diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
> > index 9e422bbbb6ab..efe893935929 100644
> > --- a/drivers/staging/qlge/qlge_mpi.c
> > +++ b/drivers/staging/qlge/qlge_mpi.c
> > @@ -88,9 +88,10 @@ int ql_write_mpi_reg(struct ql_adapter *qdev, u32 reg, u32 data)
> >  	return status;
> >  }
> >  
> > -int ql_soft_reset_mpi_risc(struct ql_adapter *qdev)
> > +int qlge_soft_reset_mpi_risc(struct ql_adapter *qdev)
> >  {
> >  	int status;
> > +
> >  	status = ql_write_mpi_reg(qdev, 0x00001010, 1);
> 
> This white space change is unrelated.
> 
> >  	return status;
> >  }
> 
> regards,
> dan carpenter
> 

Hello Dan and Greg,

Dan you are correct it is a bit of a hodge podge :)
I think that it is better to have a bigger patches that will rename
more functions, but I don't this it is good to have all the
functions renamed in one patch.

Just in the header file I counted around 55 function definitions,
and in the source files there are some more.
So that will make one huge patch.

And I am not sure if the maintainers will be OK with reviewing it.

So my sugestion is to have a bigger patches.
For example, one patch with 10 to 15 subpatches.
And one subpatch will rename one function and
update the occurrences in the driver.

This way with like 5 iterations all the functions will be renamed.

If you have a better solution please tell.

Grt,
Samuil
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
