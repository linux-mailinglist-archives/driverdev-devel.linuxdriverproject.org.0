Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5BF10318
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 May 2019 01:07:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B1A4687AF4;
	Tue, 30 Apr 2019 23:07:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6eAqE04OF7sO; Tue, 30 Apr 2019 23:07:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9C1D487A5F;
	Tue, 30 Apr 2019 23:07:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD6EA1BF357
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 23:07:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D82C884B7E
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 23:07:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eTvLzBzT3nsX for <devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 23:07:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1438D847F3
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 23:07:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 16:07:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,415,1549958400"; d="scan'208";a="342294710"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 30 Apr 2019 16:06:55 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hLbpu-000FHw-OI; Wed, 01 May 2019 07:06:54 +0800
Date: Wed, 1 May 2019 07:06:51 +0800
From: kbuild test robot <lkp@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Subject: Re: [Intel-gfx] [PATCH] dma-buf: add struct dma_buf_attach_info v2
Message-ID: <201905010708.6RCJMVAw%lkp@intel.com>
References: <20190430111002.106168-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430111002.106168-1-christian.koenig@amd.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
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
 sstabellini@kernel.org, arnd@arndb.de, linux@armlinux.org.uk,
 jonathanh@nvidia.com, tomi.valkeinen@ti.com, xen-devel@lists.xenproject.org,
 linux-media@vger.kernel.org, pawel@osciak.com, intel-gfx@lists.freedesktop.org,
 maarten.lankhorst@linux.intel.com, jani.nikula@linux.intel.com,
 rodrigo.vivi@intel.com, linux-tegra@vger.kernel.org,
 boris.ostrovsky@oracle.com, mchehab@kernel.org, sean@poorly.run,
 jgross@suse.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 kyungmin.park@samsung.com, kbuild-all@01.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi "Christian,

I love your patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[also build test WARNING on v5.1-rc7 next-20190430]
[if your patch is applied to the wrong git tree, please drop us a note to h=
elp improve the system]

url:    https://github.com/0day-ci/linux/commits/Christian-K-nig/dma-buf-ad=
d-struct-dma_buf_attach_info-v2/20190430-221017
reproduce:
        # apt-get install sparse
        make ARCH=3Dx86_64 allmodconfig
        make C=3D1 CF=3D'-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/xen/gntdev-dmabuf.c:634:33: sparse: sparse: incorrect type in ar=
gument 1 (different base types) @@    expected struct dma_buf_attach_info c=
onst *info @@    got dma_buf_attach_info const *info @@
>> drivers/xen/gntdev-dmabuf.c:634:33: sparse:    expected struct dma_buf_a=
ttach_info const *info
>> drivers/xen/gntdev-dmabuf.c:634:33: sparse:    got struct dma_buf *[assi=
gned] dma_buf
>> drivers/xen/gntdev-dmabuf.c:634:32: sparse: sparse: too many arguments f=
or function dma_buf_attach

vim +634 drivers/xen/gntdev-dmabuf.c

bf8dc55b Oleksandr Andrushchenko 2018-07-20  605  =

932d6562 Oleksandr Andrushchenko 2018-07-20  606  static struct gntdev_dmab=
uf *
932d6562 Oleksandr Andrushchenko 2018-07-20  607  dmabuf_imp_to_refs(struct=
 gntdev_dmabuf_priv *priv, struct device *dev,
932d6562 Oleksandr Andrushchenko 2018-07-20  608  		   int fd, int count, i=
nt domid)
932d6562 Oleksandr Andrushchenko 2018-07-20  609  {
bf8dc55b Oleksandr Andrushchenko 2018-07-20  610  	struct gntdev_dmabuf *gn=
tdev_dmabuf, *ret;
e648feab Christian K=F6nig         2019-04-30  611  	struct dma_buf_attach_=
info attach_info;
bf8dc55b Oleksandr Andrushchenko 2018-07-20  612  	struct dma_buf *dma_buf;
bf8dc55b Oleksandr Andrushchenko 2018-07-20  613  	struct dma_buf_attachmen=
t *attach;
bf8dc55b Oleksandr Andrushchenko 2018-07-20  614  	struct sg_table *sgt;
bf8dc55b Oleksandr Andrushchenko 2018-07-20  615  	struct sg_page_iter sg_i=
ter;
bf8dc55b Oleksandr Andrushchenko 2018-07-20  616  	int i;
bf8dc55b Oleksandr Andrushchenko 2018-07-20  617  =

bf8dc55b Oleksandr Andrushchenko 2018-07-20  618  	dma_buf =3D dma_buf_get(=
fd);
bf8dc55b Oleksandr Andrushchenko 2018-07-20  619  	if (IS_ERR(dma_buf))
bf8dc55b Oleksandr Andrushchenko 2018-07-20  620  		return ERR_CAST(dma_buf=
);
bf8dc55b Oleksandr Andrushchenko 2018-07-20  621  =

bf8dc55b Oleksandr Andrushchenko 2018-07-20  622  	gntdev_dmabuf =3D dmabuf=
_imp_alloc_storage(count);
bf8dc55b Oleksandr Andrushchenko 2018-07-20  623  	if (IS_ERR(gntdev_dmabuf=
)) {
bf8dc55b Oleksandr Andrushchenko 2018-07-20  624  		ret =3D gntdev_dmabuf;
bf8dc55b Oleksandr Andrushchenko 2018-07-20  625  		goto fail_put;
bf8dc55b Oleksandr Andrushchenko 2018-07-20  626  	}
bf8dc55b Oleksandr Andrushchenko 2018-07-20  627  =

bf8dc55b Oleksandr Andrushchenko 2018-07-20  628  	gntdev_dmabuf->priv =3D =
priv;
bf8dc55b Oleksandr Andrushchenko 2018-07-20  629  	gntdev_dmabuf->fd =3D fd;
bf8dc55b Oleksandr Andrushchenko 2018-07-20  630  =

e648feab Christian K=F6nig         2019-04-30  631  	memset(&attach_info, 0=
, sizeof(attach_info));
e648feab Christian K=F6nig         2019-04-30  632  	attach_info.dev =3D de=
v;
e648feab Christian K=F6nig         2019-04-30  633  	attach_info.dmabuf =3D=
 dma_buf;
bf8dc55b Oleksandr Andrushchenko 2018-07-20 @634  	attach =3D dma_buf_attac=
h(dma_buf, dev);
bf8dc55b Oleksandr Andrushchenko 2018-07-20  635  	if (IS_ERR(attach)) {
bf8dc55b Oleksandr Andrushchenko 2018-07-20  636  		ret =3D ERR_CAST(attach=
);
bf8dc55b Oleksandr Andrushchenko 2018-07-20  637  		goto fail_free_obj;
bf8dc55b Oleksandr Andrushchenko 2018-07-20  638  	}
bf8dc55b Oleksandr Andrushchenko 2018-07-20  639  =

bf8dc55b Oleksandr Andrushchenko 2018-07-20  640  	gntdev_dmabuf->u.imp.att=
ach =3D attach;
bf8dc55b Oleksandr Andrushchenko 2018-07-20  641  =

bf8dc55b Oleksandr Andrushchenko 2018-07-20  642  	sgt =3D dma_buf_map_atta=
chment(attach, DMA_BIDIRECTIONAL);
bf8dc55b Oleksandr Andrushchenko 2018-07-20  643  	if (IS_ERR(sgt)) {
bf8dc55b Oleksandr Andrushchenko 2018-07-20  644  		ret =3D ERR_CAST(sgt);
bf8dc55b Oleksandr Andrushchenko 2018-07-20  645  		goto fail_detach;
bf8dc55b Oleksandr Andrushchenko 2018-07-20  646  	}
bf8dc55b Oleksandr Andrushchenko 2018-07-20  647  =

bf8dc55b Oleksandr Andrushchenko 2018-07-20  648  	/* Check number of pages=
 that imported buffer has. */
bf8dc55b Oleksandr Andrushchenko 2018-07-20  649  	if (attach->dmabuf->size=
 !=3D gntdev_dmabuf->nr_pages << PAGE_SHIFT) {
bf8dc55b Oleksandr Andrushchenko 2018-07-20  650  		ret =3D ERR_PTR(-EINVAL=
);
bf8dc55b Oleksandr Andrushchenko 2018-07-20  651  		pr_debug("DMA buffer ha=
s %zu pages, user-space expects %d\n",
bf8dc55b Oleksandr Andrushchenko 2018-07-20  652  			 attach->dmabuf->size,=
 gntdev_dmabuf->nr_pages);
bf8dc55b Oleksandr Andrushchenko 2018-07-20  653  		goto fail_unmap;
bf8dc55b Oleksandr Andrushchenko 2018-07-20  654  	}
bf8dc55b Oleksandr Andrushchenko 2018-07-20  655  =

bf8dc55b Oleksandr Andrushchenko 2018-07-20  656  	gntdev_dmabuf->u.imp.sgt=
 =3D sgt;
bf8dc55b Oleksandr Andrushchenko 2018-07-20  657  =

bf8dc55b Oleksandr Andrushchenko 2018-07-20  658  	/* Now convert sgt to ar=
ray of pages and check for page validity. */
bf8dc55b Oleksandr Andrushchenko 2018-07-20  659  	i =3D 0;
bf8dc55b Oleksandr Andrushchenko 2018-07-20  660  	for_each_sg_page(sgt->sg=
l, &sg_iter, sgt->nents, 0) {
bf8dc55b Oleksandr Andrushchenko 2018-07-20  661  		struct page *page =3D s=
g_page_iter_page(&sg_iter);
bf8dc55b Oleksandr Andrushchenko 2018-07-20  662  		/*
bf8dc55b Oleksandr Andrushchenko 2018-07-20  663  		 * Check if page is val=
id: this can happen if we are given
bf8dc55b Oleksandr Andrushchenko 2018-07-20  664  		 * a page from VRAM or =
other resources which are not backed
bf8dc55b Oleksandr Andrushchenko 2018-07-20  665  		 * by a struct page.
bf8dc55b Oleksandr Andrushchenko 2018-07-20  666  		 */
bf8dc55b Oleksandr Andrushchenko 2018-07-20  667  		if (!pfn_valid(page_to_=
pfn(page))) {
bf8dc55b Oleksandr Andrushchenko 2018-07-20  668  			ret =3D ERR_PTR(-EINVA=
L);
bf8dc55b Oleksandr Andrushchenko 2018-07-20  669  			goto fail_unmap;
bf8dc55b Oleksandr Andrushchenko 2018-07-20  670  		}
bf8dc55b Oleksandr Andrushchenko 2018-07-20  671  =

bf8dc55b Oleksandr Andrushchenko 2018-07-20  672  		gntdev_dmabuf->pages[i+=
+] =3D page;
bf8dc55b Oleksandr Andrushchenko 2018-07-20  673  	}
bf8dc55b Oleksandr Andrushchenko 2018-07-20  674  =

bf8dc55b Oleksandr Andrushchenko 2018-07-20  675  	ret =3D ERR_PTR(dmabuf_i=
mp_grant_foreign_access(gntdev_dmabuf->pages,
bf8dc55b Oleksandr Andrushchenko 2018-07-20  676  						      gntdev_dmabuf=
->u.imp.refs,
bf8dc55b Oleksandr Andrushchenko 2018-07-20  677  						      count, domid)=
);
bf8dc55b Oleksandr Andrushchenko 2018-07-20  678  	if (IS_ERR(ret))
bf8dc55b Oleksandr Andrushchenko 2018-07-20  679  		goto fail_end_access;
bf8dc55b Oleksandr Andrushchenko 2018-07-20  680  =

bf8dc55b Oleksandr Andrushchenko 2018-07-20  681  	pr_debug("Imported DMA b=
uffer with fd %d\n", fd);
bf8dc55b Oleksandr Andrushchenko 2018-07-20  682  =

bf8dc55b Oleksandr Andrushchenko 2018-07-20  683  	mutex_lock(&priv->lock);
bf8dc55b Oleksandr Andrushchenko 2018-07-20  684  	list_add(&gntdev_dmabuf-=
>next, &priv->imp_list);
bf8dc55b Oleksandr Andrushchenko 2018-07-20  685  	mutex_unlock(&priv->lock=
);
bf8dc55b Oleksandr Andrushchenko 2018-07-20  686  =

bf8dc55b Oleksandr Andrushchenko 2018-07-20  687  	return gntdev_dmabuf;
bf8dc55b Oleksandr Andrushchenko 2018-07-20  688  =

bf8dc55b Oleksandr Andrushchenko 2018-07-20  689  fail_end_access:
bf8dc55b Oleksandr Andrushchenko 2018-07-20  690  	dmabuf_imp_end_foreign_a=
ccess(gntdev_dmabuf->u.imp.refs, count);
bf8dc55b Oleksandr Andrushchenko 2018-07-20  691  fail_unmap:
bf8dc55b Oleksandr Andrushchenko 2018-07-20  692  	dma_buf_unmap_attachment=
(attach, sgt, DMA_BIDIRECTIONAL);
bf8dc55b Oleksandr Andrushchenko 2018-07-20  693  fail_detach:
bf8dc55b Oleksandr Andrushchenko 2018-07-20  694  	dma_buf_detach(dma_buf, =
attach);
bf8dc55b Oleksandr Andrushchenko 2018-07-20  695  fail_free_obj:
bf8dc55b Oleksandr Andrushchenko 2018-07-20  696  	dmabuf_imp_free_storage(=
gntdev_dmabuf);
bf8dc55b Oleksandr Andrushchenko 2018-07-20  697  fail_put:
bf8dc55b Oleksandr Andrushchenko 2018-07-20  698  	dma_buf_put(dma_buf);
bf8dc55b Oleksandr Andrushchenko 2018-07-20  699  	return ret;
932d6562 Oleksandr Andrushchenko 2018-07-20  700  }
932d6562 Oleksandr Andrushchenko 2018-07-20  701  =


:::::: The code at line 634 was first introduced by commit
:::::: bf8dc55b135873d8bc58bb8fbc91c52f3a902eea xen/gntdev: Implement dma-b=
uf import functionality

:::::: TO: Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>
:::::: CC: Boris Ostrovsky <boris.ostrovsky@oracle.com>

---
0-DAY kernel test infrastructure                Open Source Technology Cent=
er
https://lists.01.org/pipermail/kbuild-all                   Intel Corporati=
on
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
