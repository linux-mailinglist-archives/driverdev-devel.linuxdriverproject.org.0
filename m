Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 939FF20FD7
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 23:06:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D8F0285B5D;
	Thu, 16 May 2019 21:06:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZO5kQRRvEEsh; Thu, 16 May 2019 21:06:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6F9A08672C;
	Thu, 16 May 2019 21:06:20 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AA7DD1BF29A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:06:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A2DBD2151F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:06:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qHgGFD65+85i
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:06:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by silver.osuosl.org (Postfix) with ESMTPS id 634E2207A1
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2TbKZ2er5EFpHSccnfJe9hvHk67lSz664en/gzUPxt0=; b=agiAHOcRa9aavU4eBKiX0g6XRR
 t7nuOm97iZ7FiwggVxOxpE8kbExu+BZVLrtSz7VaGuEGctZ1Kd4kp3iGVMBZ13yuttnxhXIACM1qa
 LaBIJHBlUAgkGIHiIenszYwuz0912P6FqSiu0fr+LqWAg+96LHP6uL0f/25f0C9ydgUEc9n5OrIxr
 cnGCNh6hku/rVEBjHfhk8oeLBxLK3YdIrB69n2Gd/o4lB20kqB7IZe1LbeQk3Vv3TOGG/3vE9bO8d
 iNaGHmXNAXWL/T2AyFZ9JAsO1DRvMgBnJxdzVir3HQimr1J8kjdp9dTg+RADTbCIQqrQNEOUy967q
 n33//B5g==;
Received: from celephais.dreamlands ([192.168.96.3] helo=azazel.net)
 by kadath.azazel.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <jeremy@azazel.net>)
 id 1hRNZu-0000BY-DU; Thu, 16 May 2019 22:06:14 +0100
Date: Thu, 16 May 2019 22:06:13 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 02/11] staging: kpc2000: add separate show functions for
 kpc_uio_class device attributes.
Message-ID: <20190516210613.GB12840@azazel.net>
References: <20190516200411.17715-1-jeremy@azazel.net>
 <20190516200411.17715-3-jeremy@azazel.net>
 <20190516204533.GA21366@kroah.com>
MIME-Version: 1.0
In-Reply-To: <20190516204533.GA21366@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 192.168.96.3
X-SA-Exim-Mail-From: jeremy@azazel.net
X-SA-Exim-Scanned: No (on kadath.azazel.net); SAEximRunCond expanded to false
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
Cc: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Content-Type: multipart/mixed; boundary="===============6598819102944421023=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6598819102944421023==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="U+BazGySraz5kW0T"
Content-Disposition: inline


--U+BazGySraz5kW0T
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 2019-05-16, at 22:45:33 +0200, Greg KH wrote:
> On Thu, May 16, 2019 at 09:04:02PM +0100, Jeremy Sowden wrote:
> > Define separate simple show functions for each attribute instead of
> > having a one big one containing a chain of conditionals.
>
> There's nothing wrong with a change of contitionals, if you do it right
> :)
>
> > Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
> > ---
> >  drivers/staging/kpc2000/kpc2000/cell_probe.c | 138 ++++++++++++-------
> >  1 file changed, 92 insertions(+), 46 deletions(-)
> >
> > diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
> > index 6a2ebdf20113..101eb23caaac 100644
> > --- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
> > +++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
> > @@ -145,55 +145,102 @@ struct kpc_uio_device {
> >      u16 core_num;
> >  };
> >
> > -static ssize_t  show_attr(struct device *dev, struct device_attribute *attr, char *buf)
> > +static ssize_t offset_show(struct device *dev, struct device_attribute *attr,
> > +			   char *buf)
> >  {
> > -    struct kpc_uio_device *kudev = dev_get_drvdata(dev);
> > -
> > -    #define ATTR_NAME_CMP(v)  (strcmp(v, attr->attr.name) == 0)
> > -    if ATTR_NAME_CMP("offset"){
> > -        return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.offset);
> > -    } else if ATTR_NAME_CMP("size"){
> > -        return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.length);
> > -    } else if ATTR_NAME_CMP("type"){
> > -        return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.type);
> > -    }
> > -    else if ATTR_NAME_CMP("s2c_dma"){
> > -        if (kudev->cte.s2c_dma_present){
> > -            return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.s2c_dma_channel_num);
> > -        } else {
> > -            return scnprintf(buf, PAGE_SIZE, "not present\n");
> > -        }
> > -    } else if ATTR_NAME_CMP("c2s_dma"){
> > -        if (kudev->cte.c2s_dma_present){
> > -            return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.c2s_dma_channel_num);
> > -        } else {
> > -            return scnprintf(buf, PAGE_SIZE, "not present\n");
> > -        }
> > -    }
> > -    else if ATTR_NAME_CMP("irq_count"){
> > -        return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.irq_count);
> > -    } else if ATTR_NAME_CMP("irq_base_num"){
> > -        return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.irq_base_num);
> > -    } else if ATTR_NAME_CMP("core_num"){
> > -        return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->core_num);
> > -    } else {
> > -        return 0;
> > -    }
> > -    #undef ATTR_NAME_CMP
> > +	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
> > +
> > +	return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.offset);
> > +}
> > +
> > +static ssize_t size_show(struct device *dev, struct device_attribute *attr,
> > +			 char *buf)
> > +{
> > +	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
> > +
> > +	return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.length);
> >  }
> >
> > +static ssize_t type_show(struct device *dev, struct device_attribute *attr,
> > +			 char *buf)
> > +{
> > +	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
> > +
> > +	return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.type);
> > +}
> > +
> > +static ssize_t s2c_dma_ch_show(struct device *dev,
> > +			       struct device_attribute *attr, char *buf)
> > +{
> > +	return 0;
> > +}
> > +
> > +static ssize_t c2s_dma_ch_show(struct device *dev,
> > +			       struct device_attribute *attr, char *buf)
> > +{
> > +	return 0;
> > +}
> > +
> > +static ssize_t s2c_dma_show(struct device *dev, struct device_attribute *attr,
> > +			    char *buf)
> > +{
> > +	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
> >
> > -DEVICE_ATTR(offset,  0444, show_attr, NULL);
> > -DEVICE_ATTR(size,    0444, show_attr, NULL);
> > -DEVICE_ATTR(type,    0444, show_attr, NULL);
> > -DEVICE_ATTR(s2c_dma_ch, 0444, show_attr, NULL);
> > -DEVICE_ATTR(c2s_dma_ch, 0444, show_attr, NULL);
> > -DEVICE_ATTR(s2c_dma, 0444, show_attr, NULL);
> > -DEVICE_ATTR(c2s_dma, 0444, show_attr, NULL);
> > -DEVICE_ATTR(irq_count, 0444, show_attr, NULL);
> > -DEVICE_ATTR(irq_base_num, 0444, show_attr, NULL);
> > -DEVICE_ATTR(core_num, 0444, show_attr, NULL);
> > -struct attribute * kpc_uio_class_attrs[] = {
> > +	if (!kudev->cte.s2c_dma_present)
> > +		return scnprintf(buf, PAGE_SIZE, "not present\n");
> > +
> > +	return scnprintf(buf, PAGE_SIZE, "%u\n",
> > +			 kudev->cte.s2c_dma_channel_num);
> > +}
> > +
> > +static ssize_t c2s_dma_show(struct device *dev, struct device_attribute *attr,
> > +			    char *buf)
> > +{
> > +	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
> > +
> > +	if (!kudev->cte.c2s_dma_present)
> > +		return scnprintf(buf, PAGE_SIZE, "not present\n");
> > +
> > +	return scnprintf(buf, PAGE_SIZE, "%u\n",
> > +			 kudev->cte.c2s_dma_channel_num);
> > +}
> > +
> > +static ssize_t irq_count_show(struct device *dev, struct device_attribute *attr,
> > +			      char *buf)
> > +{
> > +	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
> > +
> > +	return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.irq_count);
> > +}
> > +
> > +static ssize_t irq_base_num_show(struct device *dev,
> > +				 struct device_attribute *attr, char *buf)
> > +{
> > +	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
> > +
> > +	return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.irq_base_num);
> > +}
> > +
> > +static ssize_t core_num_show(struct device *dev, struct device_attribute *attr,
> > +			     char *buf)
> > +{
> > +	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
> > +
> > +	return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->core_num);
> > +}
> > +
> > +DEVICE_ATTR(offset,       0444, offset_show,       NULL);
> > +DEVICE_ATTR(size,         0444, size_show,         NULL);
> > +DEVICE_ATTR(type,         0444, type_show,         NULL);
> > +DEVICE_ATTR(s2c_dma_ch,   0444, s2c_dma_ch_show,   NULL);
> > +DEVICE_ATTR(c2s_dma_ch,   0444, c2s_dma_ch_show,   NULL);
> > +DEVICE_ATTR(s2c_dma,      0444, s2c_dma_show,      NULL);
> > +DEVICE_ATTR(c2s_dma,      0444, c2s_dma_show,      NULL);
> > +DEVICE_ATTR(irq_count,    0444, irq_count_show,    NULL);
> > +DEVICE_ATTR(irq_base_num, 0444, irq_base_num_show, NULL);
> > +DEVICE_ATTR(core_num,     0444, core_num_show,     NULL);
>
> If you are going to break things up like this, which is fine, you too
> have to do it "right".  And by that, I mean you need to use
> DEVICE_ATTR_RO().

I made the change to DEVICE_ATTR_RO in a later patch.  I'll merge that
into this one.

> Also, the scnprintf() nonsense can go away, that should just be a simple
> sprintf().

Will do.

Thanks for the review.

J.

--U+BazGySraz5kW0T
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEZ8d+2N/NBLDbUxIF0Z7UzfnX9sMFAlzd0MQACgkQ0Z7UzfnX
9sNTvQ//f5Gl6IVvaNR6R3OFfs85+qK5XgqR0cNTseV+VI5u66CPgqd58295/2Nc
ztlNySlmOx/BGlF2EiIJTyNR1TFePZU/u9RYebclEoYihAddawZ6hXtzJHga0qF4
ylEyQASPdMLl8n1VGP06WWvdIt+ZBSTNlyZclB6xoOOO4JbHx6LJ4aKbzXTodUhl
WCitcpks0eS7ty+qgavGXPMtl+xoGgERyWkg921bSnP+H0MG/Co9eqLN9VLnT/+s
35ups/MoulIl2qfx/KC/6ILi+jxdpU1SROTJD7lf+D8L7phjCasbjspBJf6/jCOq
NtBEg7YXi4jiCqN9Klc9sqo+nZOEMasd7O6zY3AFgB+xggPeaxE19QWoLXANdb/9
JsfqYFxx1BaHgY9xia8X3QuyVUQbGiVp53dYTpuyMoepyF1H+LQjuFWmu6+kGXq2
JtUy3ZIsgYaZJF0RWwb0ShsJ9PWJJ2hmGez4rh/IQ2Oi+0/8SJfaRwOnxteLE764
vd35nEGoR0zAPkX3wTmTy3ijGMkpLS2qt6f1Sdb+mgd4YI8jqDP0/GSdTiTDOiox
JFHLohxXjrOZ81L8pOPBuMiqQQ2psNK2OdyN1h5/OULAYM/5bj43z+V64H/k9iSu
2Y9mHj+a9Y5VG6SjtLtAmgljN/LxlWTXL/32DXEHWMJ9K0C7C+I=
=ryHT
-----END PGP SIGNATURE-----

--U+BazGySraz5kW0T--

--===============6598819102944421023==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6598819102944421023==--
