Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9E3FF06
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Apr 2019 19:41:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C1FA086B2F;
	Tue, 30 Apr 2019 17:41:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wtX73SYzdKyG; Tue, 30 Apr 2019 17:41:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CCA5C86B0B;
	Tue, 30 Apr 2019 17:41:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9D7AD1BF3A8
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 17:41:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9612385EC4
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 17:41:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mwrc2mCIide3 for <devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 17:41:02 +0000 (UTC)
X-Greylist: delayed 00:09:13 by SQLgrey-1.7.6
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [78.32.30.218])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AAF9185E8A
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 17:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X8xU0U6D5kWrphY4pyIW4cT6Pwpmzj8wWI41U0UNHdw=; b=bEGACmCOKe4fNpajmptVRvBbA
 fz+Abk23XlztD6TL3PZ6Zg/c75wZ3U2MquU1xv8GXapxKn7nVNJVFxRx8CB5T/ZDC0CnsnRbq+wWH
 POzZF7dj+fVMGUT8hgE8piwTl1K30iUmGwPl+5wtPxS8QDjJbAYfXH4shvuQ/DwUipi0iT4W7j25C
 42DgJIE2JEjVh7u0GtLEVX5nYKbSP4HRpZtKr1AgdplZ/xe6+C5H3T5xDsunAbQTrzJfZ0Mip8lz/
 jnE9LSsIljM/IdbvlHwDnpYSheAuGqT3dvOHka3e0aqnXszWCkBz2zMjnGplqE8j8tzavfGKXmvXm
 K9RrlxbKA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:55642)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hLWbV-0007Nk-ST; Tue, 30 Apr 2019 18:31:42 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hLWbH-0004AW-Ic; Tue, 30 Apr 2019 18:31:27 +0100
Date: Tue, 30 Apr 2019 18:31:27 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Subject: Re: [PATCH] dma-buf: add struct dma_buf_attach_info v2
Message-ID: <20190430173127.k5ivpaz6ktbfecgo@shell.armlinux.org.uk>
References: <20190430111002.106168-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430111002.106168-1-christian.koenig@amd.com>
User-Agent: NeoMutt/20170113 (1.7.2)
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
Cc: maxime.ripard@bootlin.com, joonas.lahtinen@linux.intel.com,
 dri-devel@lists.freedesktop.org, thierry.reding@gmail.com, digetx@gmail.com,
 sumit.semwal@linaro.org, m.szyprowski@samsung.com, devel@driverdev.osuosl.org,
 sstabellini@kernel.org, arnd@arndb.de, jonathanh@nvidia.com,
 tomi.valkeinen@ti.com, xen-devel@lists.xenproject.org,
 linux-media@vger.kernel.org, pawel@osciak.com, intel-gfx@lists.freedesktop.org,
 maarten.lankhorst@linux.intel.com, jani.nikula@linux.intel.com,
 rodrigo.vivi@intel.com, linux-tegra@vger.kernel.org,
 boris.ostrovsky@oracle.com, mchehab@kernel.org, sean@poorly.run,
 jgross@suse.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 kyungmin.park@samsung.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 30, 2019 at 01:10:02PM +0200, Christian K=F6nig wrote:
> Add a structure for the parameters of dma_buf_attach, this makes it much =
easier
> to add new parameters later on.

I don't understand this reasoning.  What are the "new parameters" that
are being proposed, and why do we need to put them into memory to pass
them across this interface?

If the intention is to make it easier to change the interface, passing
parameters in this manner mean that it's easy for the interface to
change and drivers not to notice the changes, since the compiler will
not warn (unless some member of the structure that the driver is using
gets removed, in which case it will error.)

Additions to the structure will go unnoticed by drivers - what if the
caller is expecting some different kind of behaviour, and the driver
ignores that new addition?

This doesn't seem to me like a good idea.

> =

> v2: rebase cleanup and fix all new implementations as well
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/dma-buf.c                       | 13 +++++++------
>  drivers/gpu/drm/armada/armada_gem.c             |  6 +++++-
>  drivers/gpu/drm/drm_prime.c                     |  6 +++++-
>  drivers/gpu/drm/i915/i915_gem_dmabuf.c          |  6 +++++-
>  drivers/gpu/drm/omapdrm/omap_gem_dmabuf.c       |  6 +++++-
>  drivers/gpu/drm/tegra/gem.c                     |  6 +++++-
>  drivers/gpu/drm/udl/udl_dmabuf.c                |  6 +++++-
>  .../common/videobuf2/videobuf2-dma-contig.c     |  6 +++++-
>  .../media/common/videobuf2/videobuf2-dma-sg.c   |  6 +++++-
>  drivers/misc/fastrpc.c                          |  6 +++++-
>  drivers/staging/media/tegra-vde/tegra-vde.c     |  6 +++++-
>  drivers/xen/gntdev-dmabuf.c                     |  4 ++++
>  include/linux/dma-buf.h                         | 17 +++++++++++++++--
>  13 files changed, 76 insertions(+), 18 deletions(-)
> =

> diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> index 3ae6c0c2cc02..e295e76a8c57 100644
> --- a/drivers/dma-buf/dma-buf.c
> +++ b/drivers/dma-buf/dma-buf.c
> @@ -535,8 +535,9 @@ EXPORT_SYMBOL_GPL(dma_buf_put);
>  /**
>   * dma_buf_attach - Add the device to dma_buf's attachments list; option=
ally,
>   * calls attach() of dma_buf_ops to allow device-specific attach functio=
nality
> - * @dmabuf:	[in]	buffer to attach device to.
> - * @dev:	[in]	device to be attached.
> + * @info:	[in]	holds all the attach related information provided
> + *			by the importer. see &struct dma_buf_attach_info
> + *			for further details.
>   *
>   * Returns struct dma_buf_attachment pointer for this attachment. Attach=
ments
>   * must be cleaned up by calling dma_buf_detach().
> @@ -550,20 +551,20 @@ EXPORT_SYMBOL_GPL(dma_buf_put);
>   * accessible to @dev, and cannot be moved to a more suitable place. Thi=
s is
>   * indicated with the error code -EBUSY.
>   */
> -struct dma_buf_attachment *dma_buf_attach(struct dma_buf *dmabuf,
> -					  struct device *dev)
> +struct dma_buf_attachment *dma_buf_attach(const struct dma_buf_attach_in=
fo *info)
>  {
> +	struct dma_buf *dmabuf =3D info->dmabuf;
>  	struct dma_buf_attachment *attach;
>  	int ret;
>  =

> -	if (WARN_ON(!dmabuf || !dev))
> +	if (WARN_ON(!dmabuf || !info->dev))
>  		return ERR_PTR(-EINVAL);
>  =

>  	attach =3D kzalloc(sizeof(*attach), GFP_KERNEL);
>  	if (!attach)
>  		return ERR_PTR(-ENOMEM);
>  =

> -	attach->dev =3D dev;
> +	attach->dev =3D info->dev;
>  	attach->dmabuf =3D dmabuf;
>  =

>  	mutex_lock(&dmabuf->lock);
> diff --git a/drivers/gpu/drm/armada/armada_gem.c b/drivers/gpu/drm/armada=
/armada_gem.c
> index 642d0e70d0f8..19c47821032f 100644
> --- a/drivers/gpu/drm/armada/armada_gem.c
> +++ b/drivers/gpu/drm/armada/armada_gem.c
> @@ -501,6 +501,10 @@ armada_gem_prime_export(struct drm_device *dev, stru=
ct drm_gem_object *obj,
>  struct drm_gem_object *
>  armada_gem_prime_import(struct drm_device *dev, struct dma_buf *buf)
>  {
> +	struct dma_buf_attach_info attach_info =3D {
> +		.dev =3D dev->dev,
> +		.dmabuf =3D buf
> +	};
>  	struct dma_buf_attachment *attach;
>  	struct armada_gem_object *dobj;
>  =

> @@ -516,7 +520,7 @@ armada_gem_prime_import(struct drm_device *dev, struc=
t dma_buf *buf)
>  		}
>  	}
>  =

> -	attach =3D dma_buf_attach(buf, dev->dev);
> +	attach =3D dma_buf_attach(&attach_info);
>  	if (IS_ERR(attach))
>  		return ERR_CAST(attach);
>  =

> diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
> index dc079efb3b0f..1dd70fc095ee 100644
> --- a/drivers/gpu/drm/drm_prime.c
> +++ b/drivers/gpu/drm/drm_prime.c
> @@ -710,6 +710,10 @@ struct drm_gem_object *drm_gem_prime_import_dev(stru=
ct drm_device *dev,
>  					    struct dma_buf *dma_buf,
>  					    struct device *attach_dev)
>  {
> +	struct dma_buf_attach_info attach_info =3D {
> +		.dev =3D attach_dev,
> +		.dmabuf =3D dma_buf
> +	};
>  	struct dma_buf_attachment *attach;
>  	struct sg_table *sgt;
>  	struct drm_gem_object *obj;
> @@ -730,7 +734,7 @@ struct drm_gem_object *drm_gem_prime_import_dev(struc=
t drm_device *dev,
>  	if (!dev->driver->gem_prime_import_sg_table)
>  		return ERR_PTR(-EINVAL);
>  =

> -	attach =3D dma_buf_attach(dma_buf, attach_dev);
> +	attach =3D dma_buf_attach(&attach_info);
>  	if (IS_ERR(attach))
>  		return ERR_CAST(attach);
>  =

> diff --git a/drivers/gpu/drm/i915/i915_gem_dmabuf.c b/drivers/gpu/drm/i91=
5/i915_gem_dmabuf.c
> index 5a101a9462d8..978054157c64 100644
> --- a/drivers/gpu/drm/i915/i915_gem_dmabuf.c
> +++ b/drivers/gpu/drm/i915/i915_gem_dmabuf.c
> @@ -277,6 +277,10 @@ static const struct drm_i915_gem_object_ops i915_gem=
_object_dmabuf_ops =3D {
>  struct drm_gem_object *i915_gem_prime_import(struct drm_device *dev,
>  					     struct dma_buf *dma_buf)
>  {
> +	struct dma_buf_attach_info attach_info =3D {
> +		.dev =3D dev->dev,
> +		.dmabuf =3D dma_buf
> +	};
>  	struct dma_buf_attachment *attach;
>  	struct drm_i915_gem_object *obj;
>  	int ret;
> @@ -295,7 +299,7 @@ struct drm_gem_object *i915_gem_prime_import(struct d=
rm_device *dev,
>  	}
>  =

>  	/* need to attach */
> -	attach =3D dma_buf_attach(dma_buf, dev->dev);
> +	attach =3D dma_buf_attach(&attach_info);
>  	if (IS_ERR(attach))
>  		return ERR_CAST(attach);
>  =

> diff --git a/drivers/gpu/drm/omapdrm/omap_gem_dmabuf.c b/drivers/gpu/drm/=
omapdrm/omap_gem_dmabuf.c
> index 0f8b597ccd10..38d06574b251 100644
> --- a/drivers/gpu/drm/omapdrm/omap_gem_dmabuf.c
> +++ b/drivers/gpu/drm/omapdrm/omap_gem_dmabuf.c
> @@ -156,6 +156,10 @@ struct dma_buf *omap_gem_prime_export(struct drm_dev=
ice *dev,
>  struct drm_gem_object *omap_gem_prime_import(struct drm_device *dev,
>  					     struct dma_buf *dma_buf)
>  {
> +	struct dma_buf_attach_info attach_info =3D {
> +		.dev =3D dev->dev,
> +		.dmabuf =3D dma_buf
> +	};
>  	struct dma_buf_attachment *attach;
>  	struct drm_gem_object *obj;
>  	struct sg_table *sgt;
> @@ -173,7 +177,7 @@ struct drm_gem_object *omap_gem_prime_import(struct d=
rm_device *dev,
>  		}
>  	}
>  =

> -	attach =3D dma_buf_attach(dma_buf, dev->dev);
> +	attach =3D dma_buf_attach(&attach_info);
>  	if (IS_ERR(attach))
>  		return ERR_CAST(attach);
>  =

> diff --git a/drivers/gpu/drm/tegra/gem.c b/drivers/gpu/drm/tegra/gem.c
> index 4f80100ff5f3..8e6b6c879add 100644
> --- a/drivers/gpu/drm/tegra/gem.c
> +++ b/drivers/gpu/drm/tegra/gem.c
> @@ -332,6 +332,10 @@ struct tegra_bo *tegra_bo_create_with_handle(struct =
drm_file *file,
>  static struct tegra_bo *tegra_bo_import(struct drm_device *drm,
>  					struct dma_buf *buf)
>  {
> +	struct dma_buf_attach_info attach_info =3D {
> +		.dev =3D drm->dev,
> +		.dmabuf =3D buf
> +	};
>  	struct tegra_drm *tegra =3D drm->dev_private;
>  	struct dma_buf_attachment *attach;
>  	struct tegra_bo *bo;
> @@ -341,7 +345,7 @@ static struct tegra_bo *tegra_bo_import(struct drm_de=
vice *drm,
>  	if (IS_ERR(bo))
>  		return bo;
>  =

> -	attach =3D dma_buf_attach(buf, drm->dev);
> +	attach =3D dma_buf_attach(&attach_info);
>  	if (IS_ERR(attach)) {
>  		err =3D PTR_ERR(attach);
>  		goto free;
> diff --git a/drivers/gpu/drm/udl/udl_dmabuf.c b/drivers/gpu/drm/udl/udl_d=
mabuf.c
> index 556f62662aa9..86b928f9742f 100644
> --- a/drivers/gpu/drm/udl/udl_dmabuf.c
> +++ b/drivers/gpu/drm/udl/udl_dmabuf.c
> @@ -226,6 +226,10 @@ static int udl_prime_create(struct drm_device *dev,
>  struct drm_gem_object *udl_gem_prime_import(struct drm_device *dev,
>  				struct dma_buf *dma_buf)
>  {
> +	struct dma_buf_attach_info attach_info =3D {
> +		.dev =3D dev->dev,
> +		.dmabuf =3D dma_buf
> +	};
>  	struct dma_buf_attachment *attach;
>  	struct sg_table *sg;
>  	struct udl_gem_object *uobj;
> @@ -233,7 +237,7 @@ struct drm_gem_object *udl_gem_prime_import(struct dr=
m_device *dev,
>  =

>  	/* need to attach */
>  	get_device(dev->dev);
> -	attach =3D dma_buf_attach(dma_buf, dev->dev);
> +	attach =3D dma_buf_attach(&attach_info);
>  	if (IS_ERR(attach)) {
>  		put_device(dev->dev);
>  		return ERR_CAST(attach);
> diff --git a/drivers/media/common/videobuf2/videobuf2-dma-contig.c b/driv=
ers/media/common/videobuf2/videobuf2-dma-contig.c
> index 82389aead6ed..b2d844d45ea6 100644
> --- a/drivers/media/common/videobuf2/videobuf2-dma-contig.c
> +++ b/drivers/media/common/videobuf2/videobuf2-dma-contig.c
> @@ -653,6 +653,10 @@ static void vb2_dc_detach_dmabuf(void *mem_priv)
>  static void *vb2_dc_attach_dmabuf(struct device *dev, struct dma_buf *db=
uf,
>  	unsigned long size, enum dma_data_direction dma_dir)
>  {
> +	struct dma_buf_attach_info attach_info =3D {
> +		.dev =3D dev,
> +		.dmabuf =3D dbuf
> +	};
>  	struct vb2_dc_buf *buf;
>  	struct dma_buf_attachment *dba;
>  =

> @@ -668,7 +672,7 @@ static void *vb2_dc_attach_dmabuf(struct device *dev,=
 struct dma_buf *dbuf,
>  =

>  	buf->dev =3D dev;
>  	/* create attachment for the dmabuf with the user device */
> -	dba =3D dma_buf_attach(dbuf, buf->dev);
> +	dba =3D dma_buf_attach(&attach_info);
>  	if (IS_ERR(dba)) {
>  		pr_err("failed to attach dmabuf\n");
>  		kfree(buf);
> diff --git a/drivers/media/common/videobuf2/videobuf2-dma-sg.c b/drivers/=
media/common/videobuf2/videobuf2-dma-sg.c
> index 270c3162fdcb..ddd5f36a8ec7 100644
> --- a/drivers/media/common/videobuf2/videobuf2-dma-sg.c
> +++ b/drivers/media/common/videobuf2/videobuf2-dma-sg.c
> @@ -608,6 +608,10 @@ static void vb2_dma_sg_detach_dmabuf(void *mem_priv)
>  static void *vb2_dma_sg_attach_dmabuf(struct device *dev, struct dma_buf=
 *dbuf,
>  	unsigned long size, enum dma_data_direction dma_dir)
>  {
> +	struct dma_buf_attach_info attach_info =3D {
> +		.dev =3D dev,
> +		.dmabuf =3D dbuf
> +	};
>  	struct vb2_dma_sg_buf *buf;
>  	struct dma_buf_attachment *dba;
>  =

> @@ -623,7 +627,7 @@ static void *vb2_dma_sg_attach_dmabuf(struct device *=
dev, struct dma_buf *dbuf,
>  =

>  	buf->dev =3D dev;
>  	/* create attachment for the dmabuf with the user device */
> -	dba =3D dma_buf_attach(dbuf, buf->dev);
> +	dba =3D dma_buf_attach(&attach_info);
>  	if (IS_ERR(dba)) {
>  		pr_err("failed to attach dmabuf\n");
>  		kfree(buf);
> diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
> index 39f832d27288..93d0aac05715 100644
> --- a/drivers/misc/fastrpc.c
> +++ b/drivers/misc/fastrpc.c
> @@ -482,6 +482,7 @@ static int fastrpc_map_create(struct fastrpc_user *fl=
, int fd,
>  			      u64 len, struct fastrpc_map **ppmap)
>  {
>  	struct fastrpc_session_ctx *sess =3D fl->sctx;
> +	struct dma_buf_attach_info attach_info;
>  	struct fastrpc_map *map =3D NULL;
>  	int err =3D 0;
>  =

> @@ -501,7 +502,10 @@ static int fastrpc_map_create(struct fastrpc_user *f=
l, int fd,
>  		goto get_err;
>  	}
>  =

> -	map->attach =3D dma_buf_attach(map->buf, sess->dev);
> +	memset(&attach_info, 0, sizeof(attach_info));
> +	attach_info.dev =3D sess->dev;
> +	attach_info.dmabuf =3D map->buf;
> +	map->attach =3D dma_buf_attach(&attach_info);
>  	if (IS_ERR(map->attach)) {
>  		dev_err(sess->dev, "Failed to attach dmabuf\n");
>  		err =3D PTR_ERR(map->attach);
> diff --git a/drivers/staging/media/tegra-vde/tegra-vde.c b/drivers/stagin=
g/media/tegra-vde/tegra-vde.c
> index aa6c6bba961e..5a10c1facc27 100644
> --- a/drivers/staging/media/tegra-vde/tegra-vde.c
> +++ b/drivers/staging/media/tegra-vde/tegra-vde.c
> @@ -568,6 +568,10 @@ static int tegra_vde_attach_dmabuf(struct device *de=
v,
>  				   size_t *size,
>  				   enum dma_data_direction dma_dir)
>  {
> +	struct dma_buf_attach_info attach_info =3D {
> +		.dev =3D dev,
> +		.dmabuf =3D dmabuf
> +	};
>  	struct dma_buf_attachment *attachment;
>  	struct dma_buf *dmabuf;
>  	struct sg_table *sgt;
> @@ -591,7 +595,7 @@ static int tegra_vde_attach_dmabuf(struct device *dev,
>  		return -EINVAL;
>  	}
>  =

> -	attachment =3D dma_buf_attach(dmabuf, dev);
> +	attachment =3D dma_buf_attach(&attach_info);
>  	if (IS_ERR(attachment)) {
>  		dev_err(dev, "Failed to attach dmabuf\n");
>  		err =3D PTR_ERR(attachment);
> diff --git a/drivers/xen/gntdev-dmabuf.c b/drivers/xen/gntdev-dmabuf.c
> index 2c4f324f8626..cacca830b482 100644
> --- a/drivers/xen/gntdev-dmabuf.c
> +++ b/drivers/xen/gntdev-dmabuf.c
> @@ -608,6 +608,7 @@ dmabuf_imp_to_refs(struct gntdev_dmabuf_priv *priv, s=
truct device *dev,
>  		   int fd, int count, int domid)
>  {
>  	struct gntdev_dmabuf *gntdev_dmabuf, *ret;
> +	struct dma_buf_attach_info attach_info;
>  	struct dma_buf *dma_buf;
>  	struct dma_buf_attachment *attach;
>  	struct sg_table *sgt;
> @@ -627,6 +628,9 @@ dmabuf_imp_to_refs(struct gntdev_dmabuf_priv *priv, s=
truct device *dev,
>  	gntdev_dmabuf->priv =3D priv;
>  	gntdev_dmabuf->fd =3D fd;
>  =

> +	memset(&attach_info, 0, sizeof(attach_info));
> +	attach_info.dev =3D dev;
> +	attach_info.dmabuf =3D dma_buf;
>  	attach =3D dma_buf_attach(dma_buf, dev);
>  	if (IS_ERR(attach)) {
>  		ret =3D ERR_CAST(attach);
> diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
> index a0bd071466fc..b5b0f5e3f186 100644
> --- a/include/linux/dma-buf.h
> +++ b/include/linux/dma-buf.h
> @@ -375,6 +375,19 @@ struct dma_buf_export_info {
>  	struct dma_buf_export_info name =3D { .exp_name =3D KBUILD_MODNAME, \
>  					 .owner =3D THIS_MODULE }
>  =

> +/**
> + * struct dma_buf_attach_info - holds information needed to attach to a =
dma_buf
> + * @dmabuf:	the exported dma_buf
> + * @dev:	the device which wants to import the attachment
> + *
> + * This structure holds the information required to attach to a buffer. =
Used
> + * with dma_buf_attach() only.
> + */
> +struct dma_buf_attach_info {
> +	struct dma_buf *dmabuf;
> +	struct device *dev;
> +};
> +
>  /**
>   * get_dma_buf - convenience wrapper for get_file.
>   * @dmabuf:	[in]	pointer to dma_buf
> @@ -389,8 +402,8 @@ static inline void get_dma_buf(struct dma_buf *dmabuf)
>  	get_file(dmabuf->file);
>  }
>  =

> -struct dma_buf_attachment *dma_buf_attach(struct dma_buf *dmabuf,
> -							struct device *dev);
> +struct dma_buf_attachment *
> +dma_buf_attach(const struct dma_buf_attach_info *info);
>  void dma_buf_detach(struct dma_buf *dmabuf,
>  				struct dma_buf_attachment *dmabuf_attach);
>  =

> -- =

> 2.17.1
> =

> =


-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
