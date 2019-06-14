Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45204464C7
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 18:46:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9019D87D6E;
	Fri, 14 Jun 2019 16:46:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NU4ULL3LkM3i; Fri, 14 Jun 2019 16:46:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BC5D587D58;
	Fri, 14 Jun 2019 16:46:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3BD3D1BF59F
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 16:45:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 34FAC20356
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 16:45:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id txkGtoa+Sk90 for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 16:45:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id C83B020345
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 16:45:57 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 09:45:57 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 14 Jun 2019 09:45:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 Jun 2019 19:45:49 +0300
Date: Fri, 14 Jun 2019 19:45:49 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [Intel-gfx] [PATCH 03/16] drm/i915: stop using drm_pci_alloc
Message-ID: <20190614164549.GD5942@intel.com>
References: <20190614134726.3827-1-hch@lst.de>
 <20190614134726.3827-4-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614134726.3827-4-hch@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linux-mm@kvack.org, devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linux-rdma@vger.kernel.org, David Airlie <airlied@linux.ie>,
 linux-media@vger.kernel.org, Intel Linux Wireless <linuxwifi@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Sean Paul <sean@poorly.run>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jun 14, 2019 at 03:47:13PM +0200, Christoph Hellwig wrote:
> Remove usage of the legacy drm PCI DMA wrappers, and with that the
> incorrect usage cocktail of __GFP_COMP, virt_to_page on DMA allocation
> and SetPageReserved.
> =

> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/gpu/drm/i915/i915_gem.c        | 30 +++++++++++++-------------
>  drivers/gpu/drm/i915/i915_gem_object.h |  3 ++-
>  drivers/gpu/drm/i915/intel_display.c   |  2 +-
>  3 files changed, 18 insertions(+), 17 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_=
gem.c
> index ad01c92aaf74..8f2053c91aff 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -228,7 +228,6 @@ i915_gem_get_aperture_ioctl(struct drm_device *dev, v=
oid *data,
>  static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *ob=
j)
>  {
>  	struct address_space *mapping =3D obj->base.filp->f_mapping;
> -	drm_dma_handle_t *phys;
>  	struct sg_table *st;
>  	struct scatterlist *sg;
>  	char *vaddr;
> @@ -242,13 +241,13 @@ static int i915_gem_object_get_pages_phys(struct dr=
m_i915_gem_object *obj)
>  	 * to handle all possible callers, and given typical object sizes,
>  	 * the alignment of the buddy allocation will naturally match.
>  	 */
> -	phys =3D drm_pci_alloc(obj->base.dev,
> -			     roundup_pow_of_two(obj->base.size),
> -			     roundup_pow_of_two(obj->base.size));
> -	if (!phys)
> +	obj->phys_vaddr =3D dma_alloc_coherent(&obj->base.dev->pdev->dev,
> +			roundup_pow_of_two(obj->base.size),
> +			&obj->phys_handle, GFP_KERNEL);
> +	if (!obj->phys_vaddr)
>  		return -ENOMEM;
>  =

> -	vaddr =3D phys->vaddr;
> +	vaddr =3D obj->phys_vaddr;
>  	for (i =3D 0; i < obj->base.size / PAGE_SIZE; i++) {
>  		struct page *page;
>  		char *src;
> @@ -286,18 +285,17 @@ static int i915_gem_object_get_pages_phys(struct dr=
m_i915_gem_object *obj)
>  	sg->offset =3D 0;
>  	sg->length =3D obj->base.size;
>  =

> -	sg_dma_address(sg) =3D phys->busaddr;
> +	sg_dma_address(sg) =3D obj->phys_handle;
>  	sg_dma_len(sg) =3D obj->base.size;
>  =

> -	obj->phys_handle =3D phys;
> -
>  	__i915_gem_object_set_pages(obj, st, sg->length);
>  =

>  	return 0;
>  =

>  err_phys:
> -	drm_pci_free(obj->base.dev, phys);
> -
> +	dma_free_coherent(&obj->base.dev->pdev->dev,
> +			roundup_pow_of_two(obj->base.size), obj->phys_vaddr,
> +			obj->phys_handle);

Need to undo the damage to obj->phys_vaddr here since
i915_gem_pwrite_ioctl() will now use that to determine if it's
dealing with a phys obj.

>  	return err;
>  }
>  =

> @@ -335,7 +333,7 @@ i915_gem_object_put_pages_phys(struct drm_i915_gem_ob=
ject *obj,
>  =

>  	if (obj->mm.dirty) {
>  		struct address_space *mapping =3D obj->base.filp->f_mapping;
> -		char *vaddr =3D obj->phys_handle->vaddr;
> +		char *vaddr =3D obj->phys_vaddr;
>  		int i;
>  =

>  		for (i =3D 0; i < obj->base.size / PAGE_SIZE; i++) {
> @@ -363,7 +361,9 @@ i915_gem_object_put_pages_phys(struct drm_i915_gem_ob=
ject *obj,
>  	sg_free_table(pages);
>  	kfree(pages);
>  =

> -	drm_pci_free(obj->base.dev, obj->phys_handle);
> +	dma_free_coherent(&obj->base.dev->pdev->dev,
> +			roundup_pow_of_two(obj->base.size), obj->phys_vaddr,
> +			obj->phys_handle);

This one is fine I think since the object remains a phys obj once
turned into one. At least the current code isn't clearing
phys_handle here. But my memory is a bit hazy on the details. Chris?

Also maybe s/phys_handle/phys_busaddr/ all over?

>  }
>  =

>  static void
> @@ -603,7 +603,7 @@ i915_gem_phys_pwrite(struct drm_i915_gem_object *obj,
>  		     struct drm_i915_gem_pwrite *args,
>  		     struct drm_file *file)
>  {
> -	void *vaddr =3D obj->phys_handle->vaddr + args->offset;
> +	void *vaddr =3D obj->phys_vaddr + args->offset;
>  	char __user *user_data =3D u64_to_user_ptr(args->data_ptr);
>  =

>  	/* We manually control the domain here and pretend that it
> @@ -1431,7 +1431,7 @@ i915_gem_pwrite_ioctl(struct drm_device *dev, void =
*data,
>  		ret =3D i915_gem_gtt_pwrite_fast(obj, args);
>  =

>  	if (ret =3D=3D -EFAULT || ret =3D=3D -ENOSPC) {
> -		if (obj->phys_handle)
> +		if (obj->phys_vaddr)
>  			ret =3D i915_gem_phys_pwrite(obj, args, file);
>  		else
>  			ret =3D i915_gem_shmem_pwrite(obj, args);
> diff --git a/drivers/gpu/drm/i915/i915_gem_object.h b/drivers/gpu/drm/i91=
5/i915_gem_object.h
> index ca93a40c0c87..14bd2d61d0f6 100644
> --- a/drivers/gpu/drm/i915/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/i915_gem_object.h
> @@ -290,7 +290,8 @@ struct drm_i915_gem_object {
>  	};
>  =

>  	/** for phys allocated objects */
> -	struct drm_dma_handle *phys_handle;
> +	dma_addr_t phys_handle;
> +	void *phys_vaddr;
>  =

>  	struct reservation_object __builtin_resv;
>  };
> diff --git a/drivers/gpu/drm/i915/intel_display.c b/drivers/gpu/drm/i915/=
intel_display.c
> index 5098228f1302..4f8b368ac4e2 100644
> --- a/drivers/gpu/drm/i915/intel_display.c
> +++ b/drivers/gpu/drm/i915/intel_display.c
> @@ -10066,7 +10066,7 @@ static u32 intel_cursor_base(const struct intel_p=
lane_state *plane_state)
>  	u32 base;
>  =

>  	if (INTEL_INFO(dev_priv)->display.cursor_needs_physical)
> -		base =3D obj->phys_handle->busaddr;
> +		base =3D obj->phys_handle;
>  	else
>  		base =3D intel_plane_ggtt_offset(plane_state);
>  =

> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
