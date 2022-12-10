<nav aria-label="Page navigation example">
    <ul class="pagination round-pagination">
        <li class="page-item"><a class="page-link" href="javascript:;">Previous</a>
        </li>
        <li class="page-item"><a class="page-link" href="javascript:;javascript:;">1</a>
        </li>
        <li class="page-item active"><a class="page-link" href="javascript:;">2</a>
        </li>
        <li class="page-item"><a class="page-link" href="javascript:;">3</a>
        </li>
        <li class="page-item"><a class="page-link" href="javascript:;">Next</a>
        </li>
    </ul>
</nav>




@if ($paginator->hasPages())
    <nav aria-label="Page navigation example">
        <ul class="pagination round-pagination">
            {{-- Previous Page Link --}}
            @if ($paginator->onFirstPage())
                <li class="page-item disabled" aria-disabled="true" aria-label="@lang('pagination.previous')">
                    <span aria-hidden="true">Previous</span>
                </li>
            @else
                <li class="page-item">
                    <a class="page-link" href="{{ $paginator->previousPageUrl() }}" rel="prev" aria-label="@lang('pagination.previous')">Previous</a>
                </li>

                &lsaquo;
                
            @endif

            {{-- Pagination Elements --}}
            @foreach ($elements as $element)
                {{-- "Three Dots" Separator --}}
                @if (is_string($element))
                    <li class="disabled" aria-disabled="true"><span>{{ $element }}</span></li>
                @endif

                {{-- Array Of Links --}}
                @if (is_array($element))
                    @foreach ($element as $page => $url)
                        @if ($page == $paginator->currentPage())
                            <li class="active" aria-current="page"><span>{{ $page }}</span></li>
                        @else
                            <li><a href="{{ $url }}">{{ $page }}</a></li>
                        @endif
                    @endforeach
                @endif
            @endforeach

            {{-- Next Page Link --}}
            @if ($paginator->hasMorePages())
                <li>
                    <a href="{{ $paginator->nextPageUrl() }}" rel="next" aria-label="@lang('pagination.next')">&rsaquo;</a>
                </li>
            @else
                <li class="disabled" aria-disabled="true" aria-label="@lang('pagination.next')">
                    <span aria-hidden="true">&rsaquo;</span>
                </li>
            @endif
        </ul>
    </nav>
@endif
