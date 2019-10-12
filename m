Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1E9D5309
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Oct 2019 00:23:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8B61C87648;
	Sat, 12 Oct 2019 22:23:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MrGN3Y1mfO1C; Sat, 12 Oct 2019 22:23:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 748D28758A;
	Sat, 12 Oct 2019 22:23:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F01C1BF40F
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 22:22:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 32D0586D53
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 22:22:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JCUhrk5EJVRd for <devel@linuxdriverproject.org>;
 Sat, 12 Oct 2019 22:22:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 65B2886B67
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 22:22:23 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id y135so11816447wmc.1
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 15:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JFzKqMu/XOgZMy43SOwvpBuOXSOBfKqaUYBhEH3wBAI=;
 b=DovncKaL/vLX3YEKzcWSlGdAVm31UdyIXs/xVZKeUBAQA4AmepkEkI395gfJs16TuU
 XHtEkew2bPZwQeuD6OY91q9m9Ba87pWJeIASGs414H1t7a9vptQWiDgHrftvao28A4sc
 WwQOZSmUoLOZxe00YxK4zNWRLBAO947An4AbCnpmjHsLuauhzUFFvdJAkMMnH01jLzOh
 9OYZ7XLtMaK6BA1uZQfG0Ez68KnwHTziqN+c9+RRV9ZVPCIqPrUOjIWLb142kfsTogqD
 F3Bvv3iniMFTA/NGjfiAYYiEiVbi8tjF1Kn489UUCRnE+UgI9AmUXdJJ7aZQi05PbqOC
 oheA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=JFzKqMu/XOgZMy43SOwvpBuOXSOBfKqaUYBhEH3wBAI=;
 b=Dmyox/H44z1k5Lmf6m/kU1r4+WHklfdqhxMoWXRUnIj+YmWKBpP+Zop+wJwVCjl/1b
 BmtmDpbURTUuzTAIxDR/uv2E+sigBjZ1u8nSomHx4JV9iZqa5qj0oF/RU4DzRgFmnJWU
 NFp966DmwcU8KV/Wvf+UCNfUkxBg1LY9GL6H1qGSabXJdriELqmjpEBpb/U7a5FiwFEl
 68p0k2y3CeC+V01ClUKQu+CwssCRrsva+Y1Ik2mJaBWlDEmIIbiSiBV3Jbh4/rD1glnF
 JZ2WXhEXkS0USdOR40F1nnhrxviqRHkqQWHY4dRXpwnHED9DU/C2aUu5kd1brrXyop54
 l2Bg==
X-Gm-Message-State: APjAAAU54zSOfrcdYQ3Rfh3u0nzzPutDAy1KxsAarKXvyQ+oYfag0ISK
 AcGoXZl1ImF5aU+mGrRG1lM=
X-Google-Smtp-Source: APXvYqznaQ2I5zk2vZHv2CXimb9P7ATxRILO9G5M5Kk6EEMLuL4mDEulPc70Q1XGrPDkxaS/UFDKlQ==
X-Received: by 2002:a7b:caa9:: with SMTP id r9mr8444358wml.58.1570918941499;
 Sat, 12 Oct 2019 15:22:21 -0700 (PDT)
Received: from wambui ([197.237.61.225])
 by smtp.gmail.com with ESMTPSA id z189sm22874407wmc.25.2019.10.12.15.22.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 15:22:20 -0700 (PDT)
Date: Sun, 13 Oct 2019 01:22:15 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Outreachy kernel] [PATCH v2 3/5] staging: octeon: remove
 typedef declaration for cvmx_fau_reg_32
Message-ID: <20191012222215.GA30311@wambui>
References: <cover.1570821661.git.wambui.karugax@gmail.com>
 <b7216f423d8e06b2ed7ac2df643a9215cd95be32.1570821661.git.wambui.karugax@gmail.com>
 <alpine.DEB.2.21.1910122035380.3049@hadrien>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910122035380.3049@hadrien>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Reply-To: alpine.DEB.2.21.1910122035380.3049@hadrien.osuosl.org
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Oct 12, 2019 at 08:37:18PM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 12 Oct 2019, Wambui Karuga wrote:
> 
> > Remove typedef declaration for enum cvmx_fau_reg_32.
> > Also replace its previous uses with new declaration format.
> > Issue found by checkpatch.pl
> >
> > Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
> > ---
> >  drivers/staging/octeon/octeon-stubs.h | 14 ++++++++------
> >  1 file changed, 8 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
> > index 0991be329139..40f0cfee0dff 100644
> > --- a/drivers/staging/octeon/octeon-stubs.h
> > +++ b/drivers/staging/octeon/octeon-stubs.h
> > @@ -201,9 +201,9 @@ union cvmx_helper_link_info {
> >  	} s;
> >  };
> >
> > -typedef enum {
> > +enum cvmx_fau_reg_32 {
> >  	CVMX_FAU_REG_32_START	= 0,
> > -} cvmx_fau_reg_32_t;
> > +};
> >
> >  typedef enum {
> >  	CVMX_FAU_OP_SIZE_8 = 0,
> > @@ -1178,16 +1178,18 @@ union cvmx_gmxx_rxx_rx_inbnd {
> >  	} s;
> >  };
> >
> > -static inline int32_t cvmx_fau_fetch_and_add32(cvmx_fau_reg_32_t reg,
> > +static inline int32_t cvmx_fau_fetch_and_add32(enum cvmx_fau_reg_32 reg,
> >  					       int32_t value)
> 
> These int32_t's don't look very desirable either.  If there is only one
> possible definition, you can just replace it by what it is defined to be.
> 
> julia
> 
Ok, I'll look into refactoring this.

wambui karuga
> >  {
> >  	return value;
> >  }
> >
> > -static inline void cvmx_fau_atomic_add32(cvmx_fau_reg_32_t reg, int32_t value)
> > +static inline void cvmx_fau_atomic_add32(enum cvmx_fau_reg_32 reg,
> > +					 int32_t value)
> >  { }
> >
> > -static inline void cvmx_fau_atomic_write32(cvmx_fau_reg_32_t reg, int32_t value)
> > +static inline void cvmx_fau_atomic_write32(enum cvmx_fau_reg_32 reg,
> > +					   int32_t value)
> >  { }
> >
> >  static inline uint64_t cvmx_scratch_read64(uint64_t address)
> > @@ -1364,7 +1366,7 @@ static inline int cvmx_spi_restart_interface(int interface,
> >  }
> >
> >  static inline void cvmx_fau_async_fetch_and_add32(uint64_t scraddr,
> > -						  cvmx_fau_reg_32_t reg,
> > +						  enum cvmx_fau_reg_32 reg,
> >  						  int32_t value)
> >  { }
> >
> > --
> > 2.23.0
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/b7216f423d8e06b2ed7ac2df643a9215cd95be32.1570821661.git.wambui.karugax%40gmail.com.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1910122035380.3049%40hadrien.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
